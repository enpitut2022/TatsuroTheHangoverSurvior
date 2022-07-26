//
//  SuggestFoodView.swift
//  kaiben
//
//  Created by 東地亮太 on 2022/07/26.
//

import SwiftUI


struct SuggestFoodView: View {
    let selectedIndex :Int=2
    var body: some View {
        Text("あなたにおすすめの食材は")
        if selectedIndex == 0 {
            Text("龍郎")
                .padding()
            Image("banana")
                .resizable()
        }
        else if selectedIndex == 1 {
            Text("水、バナナ")
                .padding()
            Image("banana")
                .resizable()
        }
        else if selectedIndex == 2 {
            Text("バナナ")
                .padding()
            Image("banana")
                .resizable()
        }
        else if selectedIndex == 3 {
            Text("ヨーグルト")
                .padding()
            Image("banana")
                .resizable()
        }
        else if selectedIndex == 4 {
            Text("味噌汁")
                .padding()
            Image("banana")
                .resizable()
        }
        else if selectedIndex == 5 {
            Text("納豆")
                .padding()
            Image("banana")
                .resizable()
        }
    }
}
