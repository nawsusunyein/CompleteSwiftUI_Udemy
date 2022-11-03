//
//  TestModifierViewThree.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 03/11/2022.
//

import SwiftUI

struct TestModifierViewThree: View {
    var body: some View {
        Text("Line One Line One Line One Line One Line One Line One Line One Line One Line One Line One Line One Line One Line One Line One Line One Line One").lineLimit(2).multilineTextAlignment(.center)
            .lineSpacing(25)
            .truncationMode(.middle)
            .textSelection(.enabled)
    }
}

struct TestModifierViewThree_Previews: PreviewProvider {
    static var previews: some View {
        TestModifierViewThree()
    }
}
