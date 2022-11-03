//
//  TestModifierViewTwo.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 03/11/2022.
//

import SwiftUI

struct TestModifierViewTwo: View {
    var body: some View {
        VStack{
            Text("Test capital letter").textCase(.uppercase)
            Text("Test underline").underline(true, color: .blue)
            Text("Test dynamic size").dynamicTypeSize(.xxxLarge)
            Text("Test strike through").strikethrough(true, color: .red)
            Text("Test shadow color").shadow(color: .blue, radius: 5, x: 10, y: 5)
            Text("Test font").font(Font.custom("Shalimar-Regular", size: 50))
            Text("Test system font").font(Font.system(size: 40))
            Text("Test Half \(Text("underline").underline())")
        }
    }
}

struct TestModifierViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TestModifierViewTwo()
    }
}
