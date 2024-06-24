//
//  LoadingView.swift
//  SpeechAI
//
//  Created by Heical Chandra on 24/06/24.
//

import SwiftUI
import DotLottie

struct LoadingView: View {
    var body: some View {
        VStack {
            DotLottieAnimation(
                fileName: "loading_screen",
                config: AnimationConfig(autoplay: true, loop: true)
            )
            .view()
            .frame(width: 300, height: 300)
        .padding()
            Text("Loading...")
                .fontWeight(.medium)
                .foregroundColor(.gray)
            Text("Each time you write your journal, you embark on an epic journey within yourself, a vital quest for mental well-being. It's an inner adventure where every word guides you closer to understanding and healing, crucial for maintaining mental health. ")
                .padding(20)
                .padding(.horizontal, 20)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                
        }
        .background(.backgroundCream)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .ignoresSafeArea()
    }
}

#Preview {
    LoadingView()
}
