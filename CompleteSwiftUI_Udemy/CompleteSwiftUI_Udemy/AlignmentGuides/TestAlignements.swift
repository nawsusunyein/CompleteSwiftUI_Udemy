//
//  TestAlignements.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 12/11/2022.
//

import SwiftUI

struct TestAlignements: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("signbus")
                .resizable()
            Image("signplane")
                .resizable()
                .alignmentGuide(VerticalAlignment.center, computeValue: {dimension in
                    return dimension[VerticalAlignment.center] + 70
                })
            Image("signphone")
                .resizable()
                .alignmentGuide(VerticalAlignment.center, computeValue: {dimension in
                    return dimension[VerticalAlignment.center] + 200
                })
        }.border(Color.blue, width: 2)
    }
}

struct TestAlignements_Previews: PreviewProvider {
    static var previews: some View {
        TestAlignements()
    }
}
