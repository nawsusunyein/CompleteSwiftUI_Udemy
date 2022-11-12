//
//  SafeAreaTestTwo.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 12/11/2022.
//

import SwiftUI

struct SafeAreaTestTwo: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(systemName: "cloud")
                    .font(.system(size: 50))
                VStack {
                    Text("City")
                    Text("New York")
                }
                Spacer()
            }
        }
        .safeAreaInset(edge: .bottom, content: {
            HStack {
                Spacer()
                Text("Important")
                    .padding()
                Spacer()
            }.background(Color.yellow)
        })
    }
}

struct SafeAreaTestTwo_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaTestTwo()
    }
}
