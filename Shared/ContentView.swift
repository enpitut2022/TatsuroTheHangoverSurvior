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
                    NavigationLink(destination:SuggestFoodView(selectedShapeIndex:0)){
                        Text("バナナ型🍌")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedShapeIndex:1)){
                        Text("コロコロ型")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedShapeIndex:2)){
                        Text("ミミズ型🪱")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedShapeIndex:3)){
                        Text("ドロドロ型")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedShapeIndex:4)){
                        Text("ビシャビシャ型")
                            .padding()
                            .font(.title)
                    }
                    NavigationLink(destination:SuggestFoodView(selectedShapeIndex:5)){
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
