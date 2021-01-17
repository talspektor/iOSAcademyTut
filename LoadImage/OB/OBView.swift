//
//  OBView.swift
//  LoadImage
//
//  Created by Tal Spektor on 17/01/2021.
//  Copyright © 2021 Tal Spektor. All rights reserved.
//

import ConcentricOnboarding
import SwiftUI

struct OBView: View {
    @State private var pageIndex = 0
    
    var body: some View {
        ConcentricOnboardingView(pages: [
            AnyView(
                OnboardingView(title: "Send messages",
                               message: "Chat with all of your friends and send messages in groups!",
                               imageName: "message")
            ),
            AnyView(
            OnboardingView(title: "Notification",
                           message: "Chat with all of your friends and send messages in groups!",
                           imageName: "bell")
            ),
            AnyView(
            OnboardingView(title: "Profile",
                           message: "Chat with all of your friends and send messages in groups!",
                           imageName: "person.circle")
            )
            ],
                                 bgColors: [.pink, .blue, .purple],
                                 duration: 2.0)
    }
}

struct OnboardingView: View {
    var title: String
    var message: String
    var imageName: String
    var body: some View {
        VStack {
            Spacer()
            Text(title)
                .font(.system(size: 40))
                .bold()
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75, alignment: .center)
                .foregroundColor(.white)
                .padding(100)
            
            Text(message)
                .font(.system(size: 28, weight: .light, design: .default))
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
    }
}

struct OBView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
