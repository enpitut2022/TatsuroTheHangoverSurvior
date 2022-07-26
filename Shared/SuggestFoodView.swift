//
//  SuggestFoodView.swift
//  kaiben
//
//  Created by 東地亮太 on 2022/07/26.
//

import SwiftUI


struct SuggestFoodView: View {
    @State private var selectedIndex = 0

    private let selectNames = ["バナナ", "コロコロ", "みみず", "どろどろ", "ビシャビシャ", "水、ころころ交互"]
    var body: some View {
        VStack {
                
                ForEach(0..<selectNames.count, id: \.self, content: { index in
                    HStack {
                        Text(selectNames[index])
                // 解説1
                        Image(systemName: selectedIndex == index ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(.blue)
                    }
                    .frame(height: 40)
                // 解説2
                    .onTapGesture {
                        selectedIndex = index
                    }
                })
                
            }
        Text("あなたにおすすめの食材は")
        if selectedIndex == 0 {
            Text("龍郎")
                .padding()
        }
        else if selectedIndex == 1 {
            Text("水、バナナ")
                .padding()
        }
        else if selectedIndex == 2 {
            Text("バナナ")
                .padding()
        }
        else if selectedIndex == 3 {
            Text("ヨーグルト")
                .padding()
        }
        else if selectedIndex == 4 {
            Text("味噌汁")
                .padding()
        }
        else if selectedIndex == 5 {
            Text("納豆")
                .padding()
        }
    }
}
