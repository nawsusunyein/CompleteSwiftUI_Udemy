//
//  CustomModifersTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 11/11/2022.
//

import SwiftUI

struct MyModifiers : ViewModifier {
    var size : CGFloat
    
    init(size : CGFloat) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: size).weight(.semibold))
            .foregroundColor(Color.green)
    }
}

struct CustomModifersTest: View {
    var body: some View {
        Image(systemName : "envelope.circle")
            .modifier(MyModifiers(size: 50))
    }
}

struct CustomModifersTest_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifersTest()
    }
}
