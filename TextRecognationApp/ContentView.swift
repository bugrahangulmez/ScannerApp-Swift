//
//  ContentView.swift
//  TextRecognationApp
//
//  Created by Bugrahan on 7.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: AppViewModel
    
    var body: some View {
        VStack {
            switch vm.dataScannerAccessStatus {
            case .notDetermined:
                Text("Not Determined")
            case .cameraAccessNotGranted:
                Text("Camera Access Not Granted")
            case .cameraNotAvailable:
                Text("Camera Not Available")
            case .scannerAvailable:
                Text("Scanner Available")
            case .scannerNotAvailable:
                Text("Scanner Not Available")
            }
                
        }
        .padding()
    }
}

//#Preview {
//    ContentView()
//}
