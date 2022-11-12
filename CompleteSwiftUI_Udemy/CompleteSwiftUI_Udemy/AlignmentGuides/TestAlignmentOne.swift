//
//  TestAlignmentOne.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 12/11/2022.
//

import SwiftUI

extension VerticalAlignment {
    enum BusAlignment : AlignmentID {
        static func defaultValue(in dimension : ViewDimensions) -> CGFloat {
            return dimension[VerticalAlignment.center]
        }
    }
    static let alignBus = VerticalAlignment(BusAlignment.self)
}

struct TestAlignmentOne: View {
    var body: some View {
        HStack(alignment: .alignBus){
            VStack {
                Image("signbus")
                    .resizable()
                    .alignmentGuide(.alignBus) {dimension in dimension[VerticalAlignment.center] - 40}
                    .frame(width: 100, height: 150)
            }
            VStack {
                Text("Transporation")
                Text("Bus")
                    .alignmentGuide(.alignBus) {dimension in dimension[VerticalAlignment.center]}
            }
        }
    }
}

struct TestAlignmentOne_Previews: PreviewProvider {
    static var previews: some View {
        TestAlignmentOne()
    }
}
