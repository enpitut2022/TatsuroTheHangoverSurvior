//
//  SuggestReason.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/26.
//

import SwiftUI

struct SuggestReason: View {
    let selectedIndex: Int
    let description: [String] = ["最高の体調です！",
                                 "冷たいものの食べ過ぎ飲み過ぎ、お腹を冷やしすぎが原因。飲食物の温度を気にしよう！",
                                 "生の卵や肉、生魚、牡蠣類を食べた覚えはない？腹痛を伴っているなら、ストレスや暴飲暴食で自律神経が乱れているのかも。落ち着いた生活をして、睡眠をちゃんと取ろう！",
                                 "肉や卵の食べ過ぎやストレス、お酒の飲み過ぎが原因!おすすめされた食物繊維を摂ろう!",
                                 "基本的に水分不足や食物繊維不足！朝食を抜いたり日常的に便意を我慢していることが問題かも？運動もしよう！",
                                 "ストレスが最大の原因！食生活だけでなく、自分の環境の見直しをしよう！"]
    
    var body: some View {
        let bounds = UIScreen.main.bounds
        let height = bounds.height
        VStack(alignment: .center) {
            Text("何でそうなったのか：")
                .padding()
                .font(.headline)
            Text(description[selectedIndex])
                .font(.title)
                .multilineTextAlignment(TextAlignment.center)
                .padding(EdgeInsets(
                    top:0,
                    leading:15,
                    bottom:height/4,
                    trailing:15
                ))
            
    //        Image("pose_genki03_man")
    //            .resizable()
    //            .scaledToFit()
        }
    }
}
