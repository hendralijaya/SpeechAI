//
//  JournalS8.swift
//  SpeechAI
//
//  Created by Heical Chandra on 26/06/24.
//

import SwiftUI

struct JournalS8: View {
    var body: some View {
        TemplateJournal(number: 8, title: "Describe what it feels like to feel safe, supported, and protected.", isActive: 8, destination: JournalS3())
            .navigationBarBackButtonHidden(true)    }
}

#Preview {
    JournalS8()
}
