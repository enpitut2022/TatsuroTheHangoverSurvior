//
//  ContentView.swift
//  Shared
//
//  Created by 谷口功 on 2022/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(destination:SwiftUIView1()){
                        Text("Button1")
                    }
                    NavigationLink(destination:SwiftUIView1()){
                        Text("Button2")
                    }
                    NavigationLink(destination:SwiftUIView1()){
                        Text("Button3")
                    }
                    NavigationLink(destination:SwiftUIView1()){
                        Text("Button4")
                    }
                    NavigationLink(destination:SwiftUIView1()){
                        Text("Button5")
                    }
                    NavigationLink(destination:SwiftUIView1()){
                        Text("Button6")
                    }
                    .navigationTitle("画面1")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
