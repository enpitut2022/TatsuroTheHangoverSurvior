//
//  ContentView.swift
//  Shared
//
//  Created by 谷口功 on 2022/07/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        HStack {
                Text("Hello,World!")
                    .font(.largeTitle)
                    .foregroundColor(.green)
//                .multilineTextAlignment(.center)
//                Text("TatsuroTheHangoverSurvior")
//                    .font(.title)
//                    .foregroundColor(.red)
        }
    }
}

//struct CircleImage: View {
//    var body: some View {
//        Image("img_main-2")
//            .clipShape(Circle())
//            .overlay(Circle()
//            .stroke(Color.white, lineWidth: 4))
//            .shadow(radius: 7)
//    }
//}

//struct MapView: View {
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
//
//    var body: some View {
//        Map(coordinateRegion: $region)
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        CircleImage()
//        MapView()
    }
}


