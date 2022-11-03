//
//  TestImageViewThree.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 04/11/2022.
//

import SwiftUI

struct TestImageViewThree: View {
    @ScaledMetric var customSize : CGFloat = 100
    var body: some View {
        VStack {
            Image("tokyo")
                .resizable()
                .frame(width: customSize, height: customSize)
        }
    }
}

struct TestImageViewThree_Previews: PreviewProvider {
    static var previews: some View {
        TestImageViewThree()
    }
}
