//
//  affectingMoodView.swift
//  SpeechAI
//
//  Created by Heical Chandra on 20/06/24.
//

import SwiftUI

struct affectingMoodView: View {
    let emotion: String
    @State private var reasons1 = ["Work", "Family", "Hobbies"]
    @State private var reasons2 = ["Finances", "Relationships"]
    @State private var reasons3 = ["Education", "Friends"]
    @State private var reasons4 = ["Other"]

    @State private var selectedReasons = []

    @State var isActive:Bool = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
                HStack {
                    Spacer()
                    VStack{
                        Image("sadness")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding(.top, 50)
                        Text(emotion)
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .padding(.bottom)
                        Text("What’s affecting your mood?")
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.title3)
                    }
                    Spacer()
                }
                VStack(alignment:.leading){
                    HStack{
                        ForEach(reasons1, id: \.self) { reason in
                            ReasonMood(reason: reason)
                        }
                    }
                    HStack{
                        ForEach(reasons2, id: \.self) { reason in
                            ReasonMood(reason: reason)
                        }
                    }
                    HStack{
                        ForEach(reasons3, id: \.self) { reason in
                            ReasonMood(reason: reason)
                        }
                    }
                    HStack{
                        ForEach(reasons4, id: \.self) { reason in
                            ReasonMood(reason: reason)
                        }
                    }
                }
                .padding(.leading, 20)
                .padding(.top, 20)
                Spacer()
                NavigationLink(destination: EmoResultView(jurnal: emotion)){
                    Text("Log mood")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.biruBTN)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    affectingMoodView(emotion: "sad")
}

struct ReasonMood: View {
    let reason: String
    @State private var isActive:Bool = false
    
    var body: some View {
        Text(reason)
            .padding(.horizontal, 3)
            .padding()
            .foregroundColor(isActive ? .biruTuaSlider : .black)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(isActive ? .biruTuaSlider : .black, lineWidth: 2))
            .onTapGesture {
                isActive.toggle()
            }
    }
}
