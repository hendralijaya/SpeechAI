//
//  CongratsView.swift
//  SpeechAI
//
//  Created by Heical Chandra on 27/06/24.
//

import SwiftUI
import DotLottie

struct CongratsView: View {
    @Published public var navigateToMoodView = false
    var body: some View {
        VStack{
            VStack{
                DotLottieAnimation(
                    fileName: "congratulations",
                    config: AnimationConfig(autoplay: true, loop: true)
                )
                .view()
                .frame(width: 400, height: 400)
                Text("Congratulations!")
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.title)
                Text("You have successfully release your negative feelings.")
                    .multilineTextAlignment(.center)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                Text("You have earned 3 Points")
                    .multilineTextAlignment(.center)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .padding()
            }
            .padding(.top, 60)
            Spacer()
            VStack {
//                NavigationLink(destination: JournalS1()){
//                    Text("Share")
//                        .fontWeight(.semibold)
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 50)
//                        .background(Color.white)
//                        .foregroundColor(.biruTuaSlider)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(Color.biruTuaSlider, lineWidth: 2)
//                        )
//                }
                NavigationLink(destination: JournalS1()){
                    Text("Continue")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.biruTuaSlider)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $shoutViewModel.navigateToMoodView, destination: {
                    MoodView()
                })
    }
    
    public func completeQuest(quest: Quest) {
            var updatedQuest = quest
            updatedQuest.isCompleted = true
            updatedQuest.progress = 100
            questService.updateQuest(quest: updatedQuest) { result in
                switch result {
                case .success:
                    if var user = self.user {
                        user.coin += quest.coin
                        self.profileService.updateProfile(user: user) { profileResult in
                            switch profileResult {
                            case .success:
                                DispatchQueue.main.async {
                                    self.user = user
                                    self.navigateToMoodView = true
                                }
                                print("Profile successfully updated!")
                            case .failure(let error):
                                print("Error updating profile: \(error)")
                            }
                        }
                    }
                case .failure(let error):
                    print("Error updating quest: \(error)")
                }
            }
        }
}

#Preview {
    CongratsView()
}
