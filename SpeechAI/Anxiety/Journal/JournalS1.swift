//
//  JournalS1.swift
//  SpeechAI
//
//  Created by Heical Chandra on 25/06/24.
//

import SwiftUI

import Speech

struct JournalS1: View {
    var body: some View {
        TemplateJournal(number: 1, title: "What is bothering you \n today?", isActive: 1, destination: JournalS2())
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    JournalS1()
}
