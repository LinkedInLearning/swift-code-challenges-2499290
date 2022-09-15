// Kamerazugriff via SwiftUI realisieren

// Ausgangslage
import SwiftUI

struct ContentView: View {
    @State private var image = Image(systemName: "photo")

    @State private var showCameraView = false

    var body: some View {
        VStack {
            image
                .resizable()
                .scaledToFit()
            Spacer()
            Button("Show camera") {
                showCameraView = true
            }
        }
        .sheet(isPresented: $showCameraView) {
            // TODO: Show camera view.
        }
    }
}
