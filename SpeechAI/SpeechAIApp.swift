//
//  SpeechAIApp.swift
//  SpeechAI
//
//  Created by Heical Chandra on 13/06/24.
//

import SwiftUI
import Speech

@main
struct SpeechAIApp: App {
    init() {
        requestSpeechAuthorization()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    func requestSpeechAuthorization() {
        SFSpeechRecognizer.requestAuthorization { authStatus in
            switch authStatus {
            case .authorized:
                print("Speech recognition authorized")
            case .denied:
                print("Speech recognition denied")
            case .restricted:
                print("Speech recognition restricted")
            case .notDetermined:
                print("Speech recognition not determined")
            @unknown default:
                print("Unknown status")
            }
        }
    }

}
