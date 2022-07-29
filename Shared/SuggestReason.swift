//
//  SuggestReason.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/26.
//

import SwiftUI

struct SuggestReason: View {
//    let selectedShapeIndex: Int
//    let selectedColorIndex: Int
    
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
    
    let shapeDescription: [String] = ["最高の体調です！",
                                 "冷たいものの食べ過ぎ飲み過ぎ、お腹を冷やしすぎが原因。飲食物の温度を気にしよう！",
                                 "生の卵や肉、生魚、牡蠣類を食べた覚えはない？腹痛を伴っているなら、ストレスや暴飲暴食で自律神経が乱れているのかも。落ち着いた生活をして、睡眠をちゃんと取ろう！",
                                 "肉や卵の食べ過ぎやストレス、お酒の飲み過ぎが原因!おすすめされた食物繊維を摂ろう!",
                                 "基本的に水分不足や食物繊維不足！朝食を抜いたり日常的に便意を我慢していることが問題かも？運動もしよう！",
                                 "ストレスが最大の原因！食生活だけでなく、自分の環境の見直しをしよう！"]
    
    let colorDescription: [String] = ["マシュマロ型",
                                    "健康的!","健康的!","健康的!",
                                    "動物性脂肪の取りすぎです!肉や乳製品を避けましょう",
                                    "脂質の取りすぎです!肉や乳製品、アボカドやナッツを避けましょう",
                                      "野菜の食べ過ぎです!もう少しバランスを意識して食べましょう",
                                      "もしかしたら肉を食べ過ぎていませんか。",
                                      "ハバネロ色"]
    
    var body: some View {
        let bounds = UIScreen.main.bounds
        let height = bounds.height
        
        let selectedShapeIndex :Int = ConvertShapeShapeIndex[selectedShape] ?? -1
        let selectedColorIndex :Int = ConvertColorColorIndex[selectedColor] ?? -1
        
        VStack(alignment: .center) {
            Text("何でそうなったのか：")
                .padding()
                .font(.headline)
            switch (selectedColorIndex,selectedShapeIndex){
            case (0,_),(8,_):
                Text("病院へ")
                    .font(.title)
                    .multilineTextAlignment(TextAlignment.center)
                    .padding(EdgeInsets(
                        top:0,
                        leading:15,
                        bottom:height/4,
                        trailing:15
                        ))
            case (1,0),(2,0),(3,0):
                Text("最高の健康状態です!")
            case(_,0):
                Text(colorDescription[selectedColorIndex])
                    .font(.title)
                    .multilineTextAlignment(TextAlignment.center)
                    .padding(EdgeInsets(
                        top:0,
                        leading:15,
                        bottom:height/4,
                        trailing:15
                        ))
            case(1,_),(2,_),(3,_):
                Text(shapeDescription[selectedShapeIndex])
                   .font(.title)
//                    .multilineTextAlignment(TextAlignment.center)
                    .padding(EdgeInsets(
                        top:0,
                        leading:15,
                        bottom:height/4,
                        trailing:15
                        ))
            default:
                let description: String =
                shapeDescription[selectedShapeIndex]+"\nまた"+colorDescription[selectedColorIndex]
                Text(description)
                    .font(.title)
                    .multilineTextAlignment(TextAlignment.center)
                    .padding(EdgeInsets(
                        top:0,
                        leading:15,
                        bottom:height/4,
                        trailing:15
                        ))
            }
               
            
    //        Image("pose_genki03_man")
    //            .resizable()
    //            .scaledToFit()
        }
    }
}
