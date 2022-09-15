// Einsatz mehrerer Alert-Modifier auf einen einzigen reduzieren

import SwiftUI

// Ausgangslage
struct ContentView: View {
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
    }
    
    private func showAlert1() {
        // TODO: Implement alert 1.
    }
    
    private func showAlert2() {
        // TODO: Implement alert 2.
    }
    
    private func showAlert3() {
        // TODO: Implement alert 3.
    }
}
