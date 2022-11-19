//
//  SafeAreaTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 12/11/2022.
//

import SwiftUI

struct SafeAreaTest: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(systemName: "cloud")
                    .font(.system(size : 100))
                VStack {
                    Text("Hello world")
                    Text("New York")
                }
            }.ignoresSafeArea(.keyboard)
            HStack {
                Image(systemName: "cloud")
                    .font(.system(size : 100))
                VStack {
                    Text("City")
                    Text("New York")
                }
            }
        }.ignoresSafeArea(.container, edges: .bottom)
    }
}

struct SafeAreaTest_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaTest()
    }
}
