// Einsatz mehrerer Alert-Modifier auf einen einzigen reduzieren

import SwiftUI

// Lösung 1
struct AlertHandling {
    struct Action: Identifiable {
        var id = UUID()
        var title: String
        var handler: () -> Void
    }

    var title = ""
    var message = ""
    var actions: [Action] = []
    var isPresented = false

    mutating func showAlert(title: String, message: String = "", actions: [Action] = []) {
        self.title = title
        self.message = message
        self.actions = actions
        isPresented = true
    }
}

struct ContentView: View {
    @State private var alertHandling = AlertHandling()

    var body: some View {
        VStack(spacing: 50) {
            Button("Alert 1") {
                showAlert1()
            }
            Button("Alert 2") {
                showAlert2()
            }
            Button("Alert 3") {
                showAlert3()
            }
        }
        .alert(alertHandling.title, isPresented: $alertHandling.isPresented) {
            ForEach(alertHandling.actions) { action in
                Button(action.title) {
                    action.handler()
                }
            }
        } message: {
            Text(alertHandling.message)
        }
    }

    private func showAlert1() {
        alertHandling.showAlert(title: "Alert 1")
    }

    private func showAlert2() {
        alertHandling.showAlert(
            title: "Alert 2",
            message: "An additional alert message",
            actions: [
                AlertHandling.Action(title: "Action 1", handler: {
                    print("Test 1")
                })
            ]
        )
    }

    private func showAlert3() {
        alertHandling.showAlert(
            title: "Alert 3",
            message: "An additional alert message",
            actions: [
                AlertHandling.Action(title: "Action 1", handler: {
                    print("Test 1")
                }),
                AlertHandling.Action(title: "Action 2", handler: {
                    print("Test 2")
                }),
                AlertHandling.Action(title: "Action 3", handler: {
                    print("Test 3")
                })
            ]
        )
    }
}

// Lösung 2
//struct AlertHandling {
//    struct Action: Identifiable {
//        var id = UUID()
//        var title: String
//        var handler: () -> Void
//    }
//
//    var title = ""
//    var message = ""
//    var actions: [Action] = []
//    var isPresented = false
//
//    mutating func showAlert(title: String, message: String = "", actions: [Action] = []) {
//        self.title = title
//        self.message = message
//        self.actions = actions
//        isPresented = true
//    }
//}
//
//extension View {
//    func alert(alertHandling: Binding<AlertHandling>) -> some View {
//        self
//            .alert(alertHandling.wrappedValue.title, isPresented: alertHandling.isPresented) {
//                ForEach(alertHandling.wrappedValue.actions) { action in
//                    Button(action.title) {
//                        action.handler()
//                    }
//                }
//            } message: {
//                Text(alertHandling.wrappedValue.message)
//            }
//    }
//}
//
//struct ContentView: View {
//    @State private var alertHandling = AlertHandling()
//
//    var body: some View {
//        VStack(spacing: 50) {
//            Button("Alert 1") {
//                showAlert1()
//            }
//            Button("Alert 2") {
//                showAlert2()
//            }
//            Button("Alert 3") {
//                showAlert3()
//            }
//        }
//        .alert(alertHandling: $alertHandling)
//    }
//
//    private func showAlert1() {
//        alertHandling.showAlert(title: "Alert 1")
//    }
//
//    private func showAlert2() {
//        alertHandling.showAlert(
//            title: "Alert 2",
//            message: "An additional alert message",
//            actions: [
//                AlertHandling.Action(title: "Action 1", handler: {
//                    print("Test 1")
//                })
//            ]
//        )
//    }
//
//    private func showAlert3() {
//        alertHandling.showAlert(
//            title: "Alert 3",
//            message: "An additional alert message",
//            actions: [
//                AlertHandling.Action(title: "Action 1", handler: {
//                    print("Test 1")
//                }),
//                AlertHandling.Action(title: "Action 2", handler: {
//                    print("Test 2")
//                }),
//                AlertHandling.Action(title: "Action 3", handler: {
//                    print("Test 3")
//                })
//            ]
//        )
//    }
//}
