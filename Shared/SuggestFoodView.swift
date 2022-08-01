//
//  SuggestFoodView.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI


struct SuggestFoodView: View {
    
    let selectedShape :String
    let selectedColor :String
    
    
    let ConvertShapeShapeIndex: [String:Int] = [
        "バナナ型": 0,
        "コロコロ型": 1,
        "ミミズ型": 2,
        "ドロドロ型": 3,
        "ビシャビシャ型": 4,
        "水,コロコロの交互型": 5
    ]
    
    let ConvertColorColorIndex: [String:Int] = [
        "マシュマロ": 0,
        "レモン": 1,
        "オレンジ": 2,
        "かつおぶし": 3,
        "カレー": 4,
        "チョコレート": 5,
        "モロヘイヤ": 6,
        "いかすみ": 7,
        "ハバネロ": 8
    ]
    
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
        
        let selectedShapeIndex :Int = ConvertShapeShapeIndex[selectedShape] ?? -1
        let selectedColorIndex :Int = ConvertColorColorIndex[selectedColor] ?? -1
        
        Text("あなたにおすすめの食材は")
        Text(foodText[selectedColorIndex][selectedShapeIndex])
            .padding()
        
        Image(foodImage[foodText[selectedColorIndex][selectedShapeIndex]] ?? "water")
            .resizable()
            .scaledToFit()
//        NavigationLink(
//            destination:SuggestReason(
//                selectedShapeIndex:selectedShapeIndex, selectedColorIndex:selectedColorIndex)){
//            Text("その理由...")
//                .padding()
//                .font(.title)
//        }
    }
    
}

