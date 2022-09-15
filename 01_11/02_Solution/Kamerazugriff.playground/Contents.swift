// Kamerazugriff via SwiftUI realisieren

import SwiftUI
import UniformTypeIdentifiers

struct CameraView: UIViewControllerRepresentable {
    @Binding var showsCameraView: Bool
    
    let action: (UIImage) -> Void
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = context.coordinator
        imagePickerController.mediaTypes = [UTType.image.identifier]
        imagePickerController.sourceType = .camera
        return imagePickerController
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var parent: CameraView
        
        init(_ cameraView: CameraView) {
            parent = cameraView
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.action(image)
            }
            parent.showsCameraView = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.showsCameraView = false
        }
    }
}

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
            CameraView(showsCameraView: $showCameraView) { uiImage in
                image = Image(uiImage: uiImage)
            }
        }
    }
}
