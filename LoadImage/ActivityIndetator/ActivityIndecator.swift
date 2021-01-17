//
//  ActivityIndecator.swift
//  LoadImage
//
//  Created by Tal Spektor on 17/01/2021.
//  Copyright © 2021 Tal Spektor. All rights reserved.
//

import SwiftUI
import ActivityIndicatorView

struct MyActivityIndecator: View {
    @State private var loading = false
    var body: some View {
        NavigationView {
            VStack {
                ActivityIndicatorView(isVisible: $loading,
                                      type: .default)
                    .foregroundColor(.blue)
                    
                    .frame(width: 100,
                      height: 100,
                      alignment: .center)
                    .padding()
                
                ActivityIndicatorView(isVisible: $loading,
                                  type: .scalingDots)
                .foregroundColor(.green)
                
                .frame(width: 100,
                  height: 100,
                  alignment: .center)
                    .padding()
                
                ActivityIndicatorView(isVisible: $loading,
                                  type: .equalizer)
                .foregroundColor(.pink)
                
                .frame(width: 100,
                  height: 100,
                  alignment: .center)
                    .padding()
                
                Button(action: {
                    self.loading = true
                }) {
                    Text("Load data")
                        .frame(width: 220, height: 50, alignment: .center)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }.navigationBarTitle("ActivityIndecator")
        }
        
    }
}

struct MyActivityIndecator_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
