//
//  TextRecognationAppApp.swift
//  TextRecognationApp
//
//  Created by Bugrahan on 7.11.2024.
//

import SwiftUI

@main
struct TextRecognationAppApp: App {
    
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
