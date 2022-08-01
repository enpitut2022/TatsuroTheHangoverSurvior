//
//  HomeView.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI


struct HomeView: View {
    @FetchRequest(
            entity: Pastdatas.entity(),
            sortDescriptors: [NSSortDescriptor(keyPath: \Pastdatas.createdAt, ascending: false)]
        ) var datas: FetchedResults<Pastdatas>
    @Environment(\.managedObjectContext) var moc
    
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
        

        
        NavigationView {
                VStack {

                    if datas.isEmpty {
                        Text("登録してね！")
                            .padding()
                            .font(.title)
                    } else {
                        NavigationLink(
                            destination:SuggestFoodView(
                                selectedShape: datas[0].shape ?? "unknown",
                                selectedColor: datas[0].color ?? "unknown"
                            )
                        ){
                            Text("おすすめの食材")
                                .padding().font(.title)
                        }
                        NavigationLink(
                            destination:SuggestReason(
                                selectedShape: datas[0].shape ?? "unknown",
                                selectedColor: datas[0].color ?? "unknown"
                            )
                        ){
                            Text("あなたの状態")
                                .padding().font(.title)
                        }
                        NavigationLink(
                            destination:IndicatorView(
                                selectedShape: datas[0].shape ?? "unknown",
                                selectedColor: datas[0].color ?? "unknown"
                            )
                        )
                        {Text("うんこの指標")
                            .padding().font(.title)}
                    }
                    
                    NavigationLink(destination:ContentView())
                    {Text("うんこを登録する")
                        .padding()
                        .font(.largeTitle)}
                    .foregroundColor(Color.green)
                    
                    
                    
                    NavigationLink(destination:PastView())
                    {Text("今までのうんこ")
                        .padding()
                        .foregroundColor(Color.gray)
                    }
                }
        }
        
    }
}
