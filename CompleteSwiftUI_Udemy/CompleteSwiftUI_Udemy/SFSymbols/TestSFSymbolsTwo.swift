//
//  TestSFSymbolsTwo.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 04/11/2022.
//

import SwiftUI

struct TestSFSymbolsTwo: View {
    let myFont : Font = Font.system(size: 50)
    var body: some View {
        VStack {
            Image(systemName: "dot.radiowaves.forward")
                .font(myFont)
            Image(systemName: "dot.radiowaves.forward", variableValue: 0.2)
                .font(myFont)
            Image(systemName: "dot.radiowaves.forward", variableValue: 0.4)
                .font(myFont)
            Image(systemName: "dot.radiowaves.forward", variableValue: 0.6)
                .font(myFont)
            Image(systemName: "dot.radiowaves.forward", variableValue: 0.8)
                .font(myFont)
            Label("Hello", systemImage: "envelope")
                .font(.largeTitle)
                .labelStyle(.titleAndIcon)
                .imageScale(.large)
        }
    }
}

struct TestSFSymbolsTwo_Previews: PreviewProvider {
    static var previews: some View {
        TestSFSymbolsTwo()
    }
}
