//
//  ContentView.swift
//  Shared
//
//  Created by 谷口功 on 2022/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(destination:SuggestFoodView(selectedIndex:0)){
                        Text("Button1")
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:1)){
                        Text("Button2")
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:2)){
                        Text("Button3")
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:3)){
                        Text("Button4")
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:4)){
                        Text("Button5")
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:5)){
                        Text("Button6")
                    }
                    .navigationTitle("画面1")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
