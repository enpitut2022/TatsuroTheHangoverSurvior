//
//  SuggestFoodView.swift
//  kaiben
//
//  Created by 東地亮太 on 2022/07/26.
//

import SwiftUI


struct SuggestFoodView: View {
    let selectedIndex :Int
    var body: some View {
        Text("あなたにおすすめの食材は")
        if selectedIndex == 0 {
            Text("龍郎")
                .padding()
            Image("tatsuro")
                .resizable()
                .scaledToFit()
            
//            NavigationLink(destination:SuggestReason()){
//                Text("その理由...")
//                    .padding()
//                    .font(.title)
//            }

        }
        else if selectedIndex == 1 {
            Text("水、バナナ")
                .padding()
            Image("water")
                .resizable()
                .scaledToFit()
            Image("banana")
                .resizable()
                .scaledToFit()
        }
        else if selectedIndex == 2 {
            Text("バナナ")
                .padding()
            Image("banana")
                .resizable()
                .scaledToFit()
        }
        else if selectedIndex == 3 {
            Text("ヨーグルト")
                .padding()
            Image("yogurt")
                .resizable()
                .scaledToFit()
        }
        else if selectedIndex == 4 {
            Text("味噌汁")
                .padding()
            Image("miso_soup")
                .resizable()
                .scaledToFit()
        }
        else if selectedIndex == 5 {
            Text("納豆")
                .padding()
            Image("natto")
                .resizable()
                .scaledToFit()
        }
    }
}
