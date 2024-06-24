//
//  MeditationS1View.swift
//  SpeechAI
//
//  Created by Heical Chandra on 21/06/24.
//

import SwiftUI

struct MeditationS1View: View {
    var body: some View {
        VStack{
            VStack{
                Text("MEDITATION")
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.title)
                Text("follow the steps to calm yourself")
                    .multilineTextAlignment(.center)
                    .fontWeight(.thin)
                    .font(.caption)
                Text("STEP 1")
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .padding()
                Image("MS1")
                Text("Sit and position yourself in a \n comfortable place")
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding(.top, 60)
            Spacer()
            VStack {
                NavigationLink(destination: ContentView()){
                    Text("OK, continue")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.biruBTN)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                HStack{
                    Rectangle()
                        .fill(Color.biruTuaSlider)
                        .frame(width: 35,height: 5)
                        .cornerRadius(25)
                    Rectangle()
                        .fill(Color.abu)
                        .frame(width: 35,height: 5)
                        .cornerRadius(25)
                    Rectangle()
                        .fill(Color.abu)
                        .frame(width: 35,height: 5)
                        .cornerRadius(25)
                    Rectangle()
                        .fill(Color.abu)
                        .frame(width: 35,height: 5)
                        .cornerRadius(25)
                    Rectangle()
                        .fill(Color.abu)
                        .frame(width: 35,height: 5)
                        .cornerRadius(25)
                }
                .padding(5)
            }
            .padding()
        }
    }
}

#Preview {
    MeditationS1View()
}
