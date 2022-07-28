//
//  ContentView.swift
//  Shared
//
//  Created by 谷口功 on 2022/07/25.
//

//ライブラリのインポート
import SwiftUI
import Combine

//列挙型変数1
enum ColorType: String {
    case unknown
    case marshmallow = "マシュマロ"
    case lemone = "レモン"
    case orange = "オレンジ"
    case bonito_kake = "かつおぶし"
    case curry = "カレー"
    case chocolate = "チョコレート"
    case moroheya = "モロヘイヤ"
    case shamelessness = "いかすみ"
    case habanero = "ハバネロ"
}

//列挙型変数2
enum ShapeType: String {
    case unknown
    case type1 = "バナナ型"
    case type2 = "コロコロ型"
    case type3 = "ミミズ型"
    case type4 = "ドロドロ型"
    case type5 = "ビシャビシャ型"
    case type6 = "水,コロコロの交互型"
}
//____________________________________________________________________________________

//View1
struct ContentView: View {
    @ObservedObject var viewModel = SingleSelectableColorViewModel()
    var body: some View {
        NavigationView {
                VStack {
                    SingleSelectableColorView(selectedColor: $viewModel.selectedColor)
                    Text("うんちの色： \(viewModel.selectedColor.rawValue)")
                    SingleSelectableShapeView(selectedShape: $viewModel.selectedShape)
                    Text("うんちの形： \(viewModel.selectedShape.rawValue)")
                    NavigationLink(destination:SuggestFoodView(
                        selectedColorIndex: viewModel.selectedColor.rawValue,
                        selectedShapeIndex: viewModel.selectedShape.rawValue)){
                            Text("決定！！！").padding().font(.title)
                        }
                }
        }
    }
}

//____________________________________________________________________________________

//ターミナルの出力
final class SingleSelectableColorViewModel: ObservableObject {
    @Published var selectedColor: ColorType = .unknown
    @Published var selectedShape: ShapeType = .unknown
    var cancels_color: [AnyCancellable] = []
    var cancels_shape: [AnyCancellable] = []

    init() {
        let selected1 = $selectedColor.sink { (box) in
            print("selected color is \(box.rawValue)")
        }
        let selected2 = $selectedShape.sink { (box) in
            print("selected shape is \(box.rawValue)")
        }
        cancels_color.append(selected1)
        cancels_shape.append(selected2)
    }
}

//____________________________________________________________________________________

//ColorView
struct ColorView: View {
    @Binding var selectedColor: ColorType
    let color: Color
    let boxType: ColorType
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: 25, height: 25)
            //.cornerRadius(10)
            .onTapGesture {
                self.selectedColor = self.boxType
        }
        .padding(3)
        .border(Color.black, width: selectedColor == boxType ? 4 : 0)
    }
}

//ShapeView
struct ShapeView: View {
    @Binding var selectedShape: ShapeType
    let color: Color
    let boxType: ShapeType
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
//        Rectangle()
//            .foregroundColor(color)
//            .frame(width: 20, height: 20)
//            //.cornerRadius(10)
            .onTapGesture {
                self.selectedShape = self.boxType
        }
//        .padding(.trailing, 5)
        .border(Color.black, width: selectedShape == boxType ? 4 : 0)
    }
}

//____________________________________________________________________________________

//SingleSelectableColorView
struct SingleSelectableColorView: View {
    @Binding var selectedColor: ColorType   //Bindingによって、あるビューで定義した状態変数を、別のビューで扱うことができるようになる。
    
    var body: some View {
            HStack(alignment: .center) {
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*239, green: (1/255)*239, blue: (1/255)*239), boxType: .marshmallow)//マシュマロ
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*238, green: (1/255)*222, blue: (1/255)*48), boxType: .lemone)//レモン
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*236, green: (1/255)*162, blue: (1/255)*41), boxType: .orange)//オレンジ
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*229, green: (1/255)*213, blue: (1/255)*200), boxType: .bonito_kake)//かつおぶし
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*136, green: (1/255)*85, blue: (1/255)*42), boxType: .curry)//カレー
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*73, green: (1/255)*30, blue: (1/255)*14), boxType: .chocolate)//チョコレート
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*63, green: (1/255)*113, blue: (1/255)*54), boxType: .moroheya)//モロヘイヤ
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*74, green: (1/255)*74, blue: (1/255)*74), boxType: .shamelessness)//いかすみ
                ColorView(selectedColor: $selectedColor,
                        color: Color(red: (1/255)*197, green: (1/255)*22, blue: (1/255)*32), boxType: .habanero)//ハバネロ
            }
    }
}

//SingleSelectableShapeView
struct SingleSelectableShapeView: View {
    @Binding var selectedShape: ShapeType   //Bindingによって、あるビューで定義した状態変数を、別のビューで扱うことができるようになる。
    
    var body: some View {
            HStack(alignment: .center) {
                ShapeView(selectedShape: $selectedShape, color: .red, boxType: .type1, image: "type1")//バナナ
                ShapeView(selectedShape: $selectedShape, color: .red, boxType: .type2, image: "type2")//コロコロ
                ShapeView(selectedShape: $selectedShape, color: .red, boxType: .type3, image: "type3")//ミミズ
                ShapeView(selectedShape: $selectedShape, color: .red, boxType: .type4, image: "type4")//ドロドロ
                ShapeView(selectedShape: $selectedShape, color: .red, boxType: .type5, image: "type5")//ビシャビシャ
                ShapeView(selectedShape: $selectedShape, color: .red, boxType: .type6, image: "type6")//水,コロコロの交互型
            }
    }
}

//____________________________________________________________________________________

//struct ContentView: View {
//    var body: some View {
//            NavigationView {
//                VStack {
//                    NavigationLink(destination:SuggestFoodView(selectedIndex:0)){
//                        Text("バナナ型🍌")
//                            .padding()
//                            .font(.title)
//                    }
//                    NavigationLink(destination:SuggestFoodView(selectedIndex:1)){
//                        Text("コロコロ型")
//                            .padding()
//                            .font(.title)
//                    }
//                    NavigationLink(destination:SuggestFoodView(selectedIndex:2)){
//                        Text("ミミズ型🪱")
//                            .padding()
//                            .font(.title)
//                    }
//                    NavigationLink(destination:SuggestFoodView(selectedIndex:3)){
//                        Text("ドロドロ型")
//                            .padding()
//                            .font(.title)
//                    }
//                    NavigationLink(destination:SuggestFoodView(selectedIndex:4)){
//                        Text("ビシャビシャ型")
//                            .padding()
//                            .font(.title)
//                    }
//                    NavigationLink(destination:SuggestFoodView(selectedIndex:5)){
//                        Text("水,コロコロの交互型")
//                            .padding()
//                            .font(.title)
//                    }
//                    .navigationTitle("うんこの形状🍦")
//            }
//        }
//    }
//}

//____________________________________________________________________________________
