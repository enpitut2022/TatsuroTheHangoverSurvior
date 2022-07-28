//
//  SuggestFoodView.swift
//  kaiben
//
//  Created by 東地亮太 on 2022/07/26.
//

import SwiftUI


struct SuggestFoodView2: View {
    let selectedIndex :Int
    let foodText: [String] = ["龍郎", "水、バナナ", "バナナ", "ヨーグルト", "味噌汁", "納豆"]
    let foodImage: [[String]] = [["tatsuro"], ["water", "banana"], ["banana"], ["yogurt"], ["miso_soup"], ["natto"]]
    var body: some View {
        Text("あなたにおすすめの食材は")
        Text(foodText[selectedIndex])
            .padding()
        ForEach(foodImage[selectedIndex], id:\.self) { index in
            Image(index)
                .resizable()
                .scaledToFit()
        }
        NavigationLink(destination:SuggestReason(selectedIndex:selectedIndex)){
            Text("その理由...")
                .padding()
                .font(.title)
        }
    }
}
