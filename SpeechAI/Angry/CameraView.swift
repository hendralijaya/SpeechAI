////
////  CameraView.swift
////  SpeechAI
////
////  Created by Heical Chandra on 23/06/24.
////
//
//import SwiftUI
//import AVFoundation
//
//class CameraView: UIViewControllerRepresentable {
//    var session = AVCaptureSession()
//    
//    func makeUIViewController(context: Context) -> UIViewController {
//        let viewController = UIViewController()
//        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
//        previewLayer.frame = UIScreen.main.bounds
//        viewController.view.layer.addSublayer(previewLayer)
//        startCamera()
//        return viewController
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
//
//    func startCamera() {
//        session.sessionPreset = .high
//        
//        guard let camera = AVCaptureDevice.default(for: .video) else { return }
//        do {
//            let input = try AVCaptureDeviceInput(device: camera)
//            if session.canAddInput(input) {
//                session.addInput(input)
//            }
//        } catch {
//            print("Error setting up the camera: \(error)")
//        }
//        
//        let output = AVCaptureVideoDataOutput()
//        output.setSampleBufferDelegate(context.coordinator, queue: DispatchQueue(label: "cameraQueue"))
//        if session.canAddOutput(output) {
//            session.addOutput(output)
//        }
//        
//        session.startRunning()
//    }
//    
//    func makeCoordinator() -> Coordinator {
//        Coordinator(parent: self)
//    }
//
//    class Coordinator: NSObject, AVCaptureVideoDataOutputSampleBufferDelegate {
//        var parent: CameraView
//
//        init(parent: CameraView) {
//            self.parent = parent
//        }
//
//        func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
//            // Process the video frame here
//        }
//    }
//}
