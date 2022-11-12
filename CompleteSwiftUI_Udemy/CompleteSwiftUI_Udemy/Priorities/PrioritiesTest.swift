//
//  PrioritiesTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 12/11/2022.
//

import SwiftUI

struct PrioritiesTest: View {
    var body: some View {
        HStack {
            Text("Manchester")
                .font(.title)
                .lineLimit(1)
                .layoutPriority(1)
            Image(systemName: "cloud")
                .font(.system(size: 80))
            Text("New York")
                .font(.title)
                .lineLimit(1)
                .fixedSize()
        }
    }
}

struct PrioritiesTest_Previews: PreviewProvider {
    static var previews: some View {
        PrioritiesTest()
    }
}
