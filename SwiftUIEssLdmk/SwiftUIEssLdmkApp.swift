//
//  SwiftUIEssLdmkApp.swift
//  SwiftUIEssLdmk
//
//  Created by Arno Pan on 2023-07-11.
//

import SwiftUI

@main
struct SwiftUIEssLdmkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
