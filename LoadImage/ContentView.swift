//
//  ContentView.swift
//  LoadImage
//
//  Created by Tal Spektor on 17/01/2021.
//  Copyright © 2021 Tal Spektor. All rights reserved.
//
import SwURL
import SwiftUI

//enum Views: Int {
//    case ob
//    case laodImage
//    static let count = 2
//
//    static func getView<T:View>(view: Int) -> T {
//        switch view {
//        case .ob:
//            return OBView() as! T
//        case .laodImage:
//            return LoadImageView() as! T
//        }
//    }
//}

struct ContentView: View {
    
    private var views = [
        AnyView(OBView()),
        AnyView(LoadImageView()),
        AnyView(MyActivityIndecator())
    ]
    private var titles = ["Onboarding", "Load Image", "ActivityIndecator"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< views.count) { index in
                    NavigationLink(destination: self.views[index]) {
                        Text(self.titles[index])
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
