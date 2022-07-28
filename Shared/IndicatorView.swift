//
//  Indicator.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI

struct IndicatorView: View {
    
    let ColorText: [String] = [
        "マシュマロ",
         "レモン",
         "オレンジ",
         "かつおぶし",
         "カレー",
         "チョコレート",
         "モロヘイヤ",
         "いかすみ",
         "ハバネロ"
         ]


    let ShapeText: [String] =  [
        "バナナ型",
        "コロコロ型",
        "ミミズ型",
        "ドロドロ型",
        "ビシャビシャ型",
        "水,コロコロの交互型",
    ]
    
    let ShapeImage: [String] =  [
        "type1",
        "type2",
        "type3-3",
        "type4",
        "type5",
        "type6",
    ]
    
    let ColorIndex: [Color] =  [
        Color(red: (1/255)*239, green: (1/255)*239, blue: (1/255)*239),
        Color(red: (1/255)*238, green: (1/255)*222, blue: (1/255)*48),
        Color(red: (1/255)*236, green: (1/255)*162, blue: (1/255)*41),
        Color(red: (1/255)*229, green: (1/255)*213, blue: (1/255)*200),
        Color(red: (1/255)*136, green: (1/255)*85, blue: (1/255)*42),
        Color(red: (1/255)*73, green: (1/255)*30, blue: (1/255)*14),
        Color(red: (1/255)*63, green: (1/255)*113, blue: (1/255)*54),
        Color(red: (1/255)*74, green: (1/255)*74, blue: (1/255)*74),
        Color(red: (1/255)*197, green: (1/255)*22, blue: (1/255)*32),
    ]
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) { // カラム数の指定
                        ForEach((1...70), id: \.self) { index in
                            if index == 1 {
                                Text("色/形")
                                    .frame(width: 60, height: 60)
                            } else if 2 <= index && index <= 7 {
                                Image(ShapeImage[index-2])
                                    .resizable()
                                    .scaledToFit()
                            } else if index%7 == 1 && index != 1{
                                Rectangle()
                                    .foregroundColor(ColorIndex[index/7 - 1])
                                    .frame(width: 25, height: 25)
                                    .cornerRadius(10)
                            } else if (index >= 9 && index <= 14) || (index >= 65 && index <= 70){
                                Text("要注意")
                                    .frame(width: 60, height: 60)
                            } else if index >= 16 && index <= 30 && index%7 == 2{
                                Text("健康")
                                    .frame(width: 60, height: 60)
                            } else if (index >= 17 && index <= 35 && index%7 != 0) || (index%7 == 2 && index != 65){
                                Text("ちょっと注意")
                                    .frame(width: 60, height: 60)
                            } else {
                                Text("注意")
                                    .frame(width: 60, height: 60)
                            }
                        }
                    }
        }
}
