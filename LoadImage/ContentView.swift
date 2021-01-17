//
//  ContentView.swift
//  LoadImage
//
//  Created by Tal Spektor on 17/01/2021.
//  Copyright © 2021 Tal Spektor. All rights reserved.
//
import SwURL
import SwiftUI

struct ContentView: View {
    
    init() {
        SwURL.setImageCache(type: .persistent)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                RemoteImageView(url: URL(string: "https://iosacademy.io/assets/images/brand/icon.jpg")!, placeholderImage: Image(systemName: "house"), transition: .custom(transition: .opacity, animation: .easeIn(duration: 0.5)))
                    .progress({ progress in
                        Text("Loading \(progress)")
                    })
                    .aspectRatio(contentMode: .fit)
                //                RemoteImageView(url: URL(string: "https://iosacademy.io/assets/images/brand/icon.jpg")!)
//                    .aspectRatio(contentMode: .fit)
                Text("Loadiong Image")
            }
        .navigationBarTitle("Welcome!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
