//
//  JournalS4.swift
//  SpeechAI
//
//  Created by Heical Chandra on 26/06/24.
//

import SwiftUI

struct JournalS4: View {
    var body: some View {
        TemplateJournal(number: 4, title: "What are your immediate\n goals?", isActive: 4, destination: JournalS5())
            .navigationBarBackButtonHidden(true)    }
}

#Preview {
    JournalS4()
}
