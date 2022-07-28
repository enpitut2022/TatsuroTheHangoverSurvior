//
//  Indicator.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI

struct IndicatorView: View {
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(), count: 10)) { // カラム数の指定
                        ForEach((1...20), id: \.self) { index in
                            Text("\(index)")
                                .frame(width: 60, height: 60)
                        }
                    }
        }
}
