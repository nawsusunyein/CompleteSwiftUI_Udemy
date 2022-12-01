//
//  ButtonTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 25/11/2022.
//

import SwiftUI

struct ButtonTest: View {
    
    @State private var colorActive : Bool = false
    @State private var showInfo : Bool = false
    @State private var color = Color.clear
    @State private var enableButton : Bool = false
    
    var body: some View {
        VStack {
            Text("Default Title")
                .padding()
                .background(colorActive ? Color.green : Color.gray)
            Button("Change Color", action: changeColor)
            Button("Show Information") {
                showInfo.toggle()
            }
            if showInfo {
                Text("This is information")
            }
            Text("Second Title")
                .padding()
                .background(color)
            Button("Test enable button") {
                color = Color.red
                enableButton = true
            }
            .disabled(enableButton)
        }
    }
    
    func changeColor() {
        colorActive.toggle()
    }
}

struct ButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTest()
    }
}
