//
//  JournalS6.swift
//  SpeechAI
//
//  Created by Heical Chandra on 26/06/24.
//

import SwiftUI

struct JournalS6: View {
    var body: some View {
        TemplateJournal(number: 6, title: "What are 3 things you can do to improve your mental health?", isActive: 6, destination: JournalS7())
            .navigationBarBackButtonHidden(true)    }
}

#Preview {
    JournalS6()
}
