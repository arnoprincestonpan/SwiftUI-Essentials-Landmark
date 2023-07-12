//
//  LandmarkList.swift
//  SwiftUIEssLdmk
//
//  Created by Arno Pan on 2023-07-11.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false 
    
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label : {
                    LandmarkRow(landmark: landmark)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 14"], id: \.self) { deviceName in
                 LandmarkList()
                     .previewDevice(PreviewDevice(rawValue: deviceName))
                     .previewDisplayName(deviceName)
             }
    }
}
