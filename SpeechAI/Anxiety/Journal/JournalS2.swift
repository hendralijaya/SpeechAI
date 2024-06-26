//
//  JournalS2.swift
//  SpeechAI
//
//  Created by Heical Chandra on 26/06/24.
//

import SwiftUI
import Speech

struct JournalS2: View {
    var body: some View {
        TemplateJournal(number: 2, title: "What events are causing \n difficulties for you?", isActive: 2, destination: JournalS3())
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    JournalS2()
}
