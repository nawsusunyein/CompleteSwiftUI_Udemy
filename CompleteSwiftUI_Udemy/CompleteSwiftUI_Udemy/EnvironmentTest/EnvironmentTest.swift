//
//  EnvironmentTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 20/11/2022.
//

import SwiftUI

struct EnvironmentTest: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("EnvColor"))
    }
}

struct EnvironmentTest_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EnvironmentTest()
                .environment(\.colorScheme, .dark)
            EnvironmentTest()
                .environment(\.colorScheme, .light)
            EnvironmentTest()
                .environment(\.dynamicTypeSize, .small)
            EnvironmentTest()
                .environment(\.dynamicTypeSize, .large)
            EnvironmentTest()
                .environment(\.dynamicTypeSize, .xxLarge)
        }
    }
}
