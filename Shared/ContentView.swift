//
//  ContentView.swift
//  Shared
//
//  Created by 谷口功 on 2022/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Unching, world!")
            .padding()
        NavigationView {
                    NavigationLink(destination: SuggestFoodView()) {
                        Text("次のビューを表示する")
                            .font(.system(size: 20))
                    }
                    .navigationBarTitle("First View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
