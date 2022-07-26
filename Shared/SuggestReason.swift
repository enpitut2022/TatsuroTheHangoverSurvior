//
//  SuggestReason.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/26.
//

import SwiftUI

struct SuggestReason: View {
    var body: some View {
        Text("何でそうなったのか：")
            .padding()
            .font(.title)
        Text("善玉菌が強く、いい健康状態！！！")
        
        Image("pose_genki03_man")
            .resizable()
            .scaledToFit()
    }
}

struct SuggestReason_Previews: PreviewProvider {
    static var previews: some View {
        SuggestReason()
    }
}
