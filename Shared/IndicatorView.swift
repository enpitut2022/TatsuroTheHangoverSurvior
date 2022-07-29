//
//  Indicator.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI

let index_x: Int = 5
let index_y: Int = 5

struct IndicatorView: View {
    
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
    
    let index_circle = index_x + (index_y - 1) * 7
    
    
    
    var body: some View {
        
        let selectedShapeIndex = ConvertShapeShapeIndex[selectedShape] ?? -1
        let selectedColorIndex = ConvertColorColorIndex[selectedColor] ?? -1
        
        let indexCircle = (selectedShapeIndex + 2) + (selectedColorIndex + 1)  * 7
        
        HStack(alignment: .center) {
            Text("要注意")
                .background(
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 50, height: 50)
                )
                .padding(5)
            Text("注意")
                .background(
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(width: 50, height: 50)
                )
                .padding(5)
            Text("少し注意")
                .background(
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(width: 50, height: 50)
                )
                .padding(5)
            Text("健康")
                .background(
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 50, height: 50)
                )
                .padding(5)

        }
        LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                        ForEach((1...70), id: \.self) { index in
                            if (index == indexCircle){
                                Capsule()
                                    .frame(width: 25, height: 25)
                            }
                            // 色形の表示
                            else if index == 1 {
                                Text("色/形")
                                    .frame(width: 60, height: 60)
                            }
                            // 形の表示
                            else if 2 <= index && index <= 7 {
                                Image(ShapeImage[index-2])
                                    .resizable()
                                    .scaledToFit()
                            }
                            //　色の表示
                            else if index%7 == 1 && index != 1{
                                Rectangle()
                                    .foregroundColor(ColorIndex[index/7 - 1])
                                    .frame(width: 25, height: 25)
                                    .cornerRadius(10)
                            }
                            // 要注意ゾーン
                            else if (index >= 9 && index <= 14) || (index >= 65 && index <= 70){
                                Rectangle()
                                    .foregroundColor(.red)
                                    .frame(width: 25, height: 25)
                            }
                            // 健康ゾーン
                            else if index >= 16 && index <= 30 && index%7 == 2{
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .frame(width: 25, height: 25)
                            }
                            // 少し注意ゾーン
                            else if (index >= 17 && index <= 35 && index%7 != 0) || (index%7 == 2 && index != 65){
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 25, height: 25)
                            }
                            // 注意ゾーン
                            else {
                                Rectangle()
                                    .foregroundColor(.yellow)
                                    .frame(width: 25, height: 25)
                            }
                            
                            
                        }
            }
        }
}
