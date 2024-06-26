//
//  JournalS5.swift
//  SpeechAI
//
//  Created by Heical Chandra on 26/06/24.
//

import SwiftUI

struct JournalS5: View {
    var body: some View {
        TemplateJournal(number: 5, title: "What brings you joy?", isActive: 5, destination: JournalS6())
            .navigationBarBackButtonHidden(true)    }
}

#Preview {
    JournalS5()
}
