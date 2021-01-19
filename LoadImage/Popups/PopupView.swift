//
//  PopupView.swift
//  LoadImage
//
//  Created by Tal Spektor on 17/01/2021.
//  Copyright © 2021 Tal Spektor. All rights reserved.
//

import PopupView
import SwiftUI

struct PopupView: View {
    
    @State var isShowingPopup = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.isShowingPopup = true
                }) {
                    Text("Show popup")
                        .frame(width: 220, height: 50, alignment: .center)
                        .background(Color.green)
                    .cornerRadius(8)
                        .padding()
                }.popup(isPresented: $isShowingPopup,
                        type: .floater(verticalPadding: 20),
                        position: .bottom,
                        animation: .easeIn,
                        autohideIn: 3,
                        closeOnTap: true,
                        closeOnTapOutside: false) {
                    Toast()
                    
                }
            }.navigationBarTitle("Toasts")
            
        }
    }
}

struct Toast: View {
    var body: some View {
        ZStack {
            Color.blue
            HStack {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .foregroundColor(.white)
                    .padding()
                
                Text("You have 32 messages wayting for you")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }.padding()
        }
        .cornerRadius(12)
        .padding()
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
