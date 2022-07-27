//
//  ContentView.swift
//  Shared
//
//  Created by 谷口功 on 2022/07/25.
//

import SwiftUI
import Combine

enum BoxType: String {
    case unknown
    case red
    case green
    case blue
}

final class SingleSelectableBoxViewModel: ObservableObject {
    @Published var selectedBox: BoxType = .unknown
    var cancels: [AnyCancellable] = []

    init() {
        let selected = $selectedBox.sink { (box) in
            print("selected box is \(box.rawValue)")
        }
        cancels.append(selected)
    }
}

struct ParentView: View {
    @ObservedObject var viewModel = SingleSelectableBoxViewModel()
    var body: some View {
        VStack {
            SingleSelectableBoxView(selectedBox: $viewModel.selectedBox)
            Text("Selected box is \(viewModel.selectedBox.rawValue)")
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}


struct SingleSelectableBoxView: View {
    @Binding var selectedBox: BoxType
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                BoxView(selectedBox: $selectedBox, color: .white, boxType: .red)
                BoxView(selectedBox: $selectedBox, color: .green, boxType: .green)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)
                BoxView(selectedBox: $selectedBox, color: .blue, boxType: .blue)

            }
        }
    }
}

struct SingleSelectableBoxView_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelectableBoxView(selectedBox: .constant(.red))
    }
}

struct BoxView: View {
    @Binding var selectedBox: BoxType
    let color: Color
    let boxType: BoxType
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: 20, height: 20)
            //.cornerRadius(10)
            .onTapGesture {
                self.selectedBox = self.boxType
        }
        .padding(.trailing, 5)
        .border(Color.black, width: selectedBox == boxType ? 4 : 0)
    }
}

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
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
