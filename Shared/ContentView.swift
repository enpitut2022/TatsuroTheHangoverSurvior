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
                        Text("バナナ型🍌")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:1)){
                        Text("コロコロ型")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:2)){
                        Text("ミミズ型🪱")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:3)){
                        Text("ドロドロ型")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:4)){
                        Text("ビシャビシャ型")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedIndex:5)){
                        Text("水,コロコロの交互型")
                            .padding()
                            .font(.title)
                    }
                    .navigationTitle("うんこの形状🍦")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
