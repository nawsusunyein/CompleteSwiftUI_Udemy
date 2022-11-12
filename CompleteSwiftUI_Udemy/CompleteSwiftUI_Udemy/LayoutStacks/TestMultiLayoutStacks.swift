//
//  TestMultiLayoutStacks.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 12/11/2022.
//

import SwiftUI

struct TestMultiLayoutStacks: View {
    var body: some View {
        HStack {
            Image(systemName: "cloud")
                .font(.system(size: 100))
            VStack {
                Text("City")
                Text("New York")
            }
            Spacer()
        }
        Spacer()
    }
}

struct TestMultiLayoutStacks_Previews: PreviewProvider {
    static var previews: some View {
        TestMultiLayoutStacks()
    }
}
