//
//  SuggestFoodView.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI

struct SuggestFoodView: View {
    let selectedColorIndex :String
    let selectedShapeIndex :String
    var body: some View {
        Text("あなたの💩の色と形は")
        Text(selectedColorIndex)
        Text(selectedShapeIndex)
    }
}
