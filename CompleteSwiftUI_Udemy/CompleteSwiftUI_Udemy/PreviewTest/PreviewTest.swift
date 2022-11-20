//
//  PreviewTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 20/11/2022.
//

import SwiftUI

struct PreviewTest: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PreviewTest_Previews: PreviewProvider {
    static var previews: some View {
        PreviewTest()
            .previewDevice(PreviewDevice(stringLiteral: "iPhone 8"))
            .previewDisplayName("iPhone 8")
        PreviewTest()
            .previewDevice(PreviewDevice(stringLiteral: "iPhone 13"))
            .previewDisplayName("iPhone 13")
        PreviewTest()
            .previewLayout(.sizeThatFits)
        PreviewTest()
            .previewDevice(PreviewDevice(stringLiteral: "iPhone 14"))
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
