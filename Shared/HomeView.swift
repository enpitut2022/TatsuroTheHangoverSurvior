//
//  HomeView.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI

struct HomeView: View {
    @FetchRequest(sortDescriptors: []) var datas: FetchedResults<Pastdatas>
    var body: some View {
        NavigationView {
                VStack {
                    List(datas) { data in
                                    Text(data.color ?? "Unknown")
                                }
                    NavigationLink(destination:IndicatorView())
                    {Text("うんこの指標").padding().font(.title)}
                    
                    NavigationLink(destination:ContentView())
                    {Text("今日のうんこ").padding().font(.title)}
                    
                    NavigationLink(destination:PastView())
                    {Text("今までのうんこ").padding().font(.title)}
                }
        }
    }
}
