//
//  SuggestFoodView.swift
//  kaiben
//
//  Created by 東地亮太 on 2022/07/26.
//

import SwiftUI


struct SuggestFoodView: View {
    let selectedShapeIndex :Int
    let selectedColorIndex :Int
    let foodText: [[String]] = [
        ["","","","","",""],
        ["龍郎", "味噌汁", "味噌汁", "ヨーグルト", "バナナ", "納豆"],
        ["龍郎", "味噌汁", "味噌汁", "ヨーグルト", "バナナ", "納豆"],
        ["龍郎", "味噌汁", "味噌汁", "ヨーグルト", "バナナ", "納豆"],
        ["脂少なめ龍郎", "味噌汁", "味噌汁", "低脂肪ヨーグルト", "バナナ", "納豆"],
        ["脂少なめ龍郎", "味噌汁", "味噌汁", "低脂肪ヨーグルト", "バナナ", "納豆"],
        ["野菜少なめ龍郎", "味噌汁", "味噌汁", "ヨーグルト", "バナナ", "納豆"],
        ["龍郎", "味噌汁", "味噌汁", "低脂肪ヨーグルト", "バナナ", "納豆"],
        ["","","","","",""]
    ]
    let foodImage: [String:String] = [
        "龍郎":"tatsuro","脂少なめ龍郎":"tatsuro","野菜少なめ龍郎":"tatsuro",                 "味噌汁":"miso_soup","バナナ":"banana", "ヨーグルト":"yogurt",
        "低脂肪ヨーグルト":"yogurt", "納豆":"natto","":"byouin"]
    var body: some View {
        Text("あなたにおすすめの食材は")
        Text(foodText[selectedColorIndex][selectedShapeIndex])
            .padding()
        Image(foodImage[foodText[selectedColorIndex][selectedShapeIndex] ])
                .resizable()
                .scaledToFit()
        }
        NavigationLink(destination:SuggestReason(selectedColorIndex:selectedColorIndex,selectedShapeIndex:selectedShapeIndex)){
            Text("その理由...")
                .padding()
                .font(.title)
        }
    }
}
