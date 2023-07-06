//
//  ContentView.swift
//  AlertKit
//
//  Created by Thân Văn Thanh on 06/07/2023.
//

// heart
//case spinnerSmall
//case spinnerLarge

import SwiftUI

struct ContentView: View {
    @State private var stateStyle: Bool = false
    @State private var styleLabel = "Bottom the screen"
    @State var style: AlertViewStyle = .bottom
    var body: some View {
        VStack {
            Text(styleLabel)
            Toggle("Style", isOn: $stateStyle)
                .onChange(of: stateStyle) { value in
                    self.style = value ? .middle : .bottom
                    self.styleLabel = value ? "Middle of the screen" : "Bottom the screen"
                }
            Spacer()
            Button("Done") {
                AlertKitAPI
                    .present(title: "Done",
                             icon: .done,
                             style: style,
                             haptic: .success)
            }
            
            Button("Error") {
                AlertKitAPI
                    .present(title: "Error",
                             subtitle: "There is an unknown error",
                             icon: .error,
                             style: style,
                             haptic: .error)
            }
            
            Button("Heart") {
                AlertKitAPI
                    .present(title: "Heart",
                             icon: .heart,
                             style: style,
                             haptic: .success)
            }
            
            Button("Spinner Small") {
                AlertKitAPI
                    .present(title: "Spinner Small",
                             icon: .spinnerSmall,
                             style: style,
                             haptic: .success)
            }
            
            Button("Spinner Large") {
                AlertKitAPI
                    .present(title: "Spinner Large",
                             icon: .spinnerLarge,
                             style: style,
                             haptic: .warning)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
