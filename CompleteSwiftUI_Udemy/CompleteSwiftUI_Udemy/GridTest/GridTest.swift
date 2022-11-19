//
//  GridTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 19/11/2022.
//

import SwiftUI

struct GridTest: View {
    var body: some View {
        Grid {
            GridRow {
                Image(systemName: "message")
                    .frame(width: 100, height : 100)
                Image(systemName: "mic")
                    .frame(width: 100, height : 100)
            }.background(Color.red)
            GridRow {
                Image(systemName: "phone")
                    .frame(width: 100, height: 100)
                Image(systemName: "envelope")
                    .frame(width: 100, height: 100)
            }.background(Color.blue)
        }.font(.largeTitle)
    }
}

struct GridTest_Previews: PreviewProvider {
    static var previews: some View {
        GridTest()
    }
}
