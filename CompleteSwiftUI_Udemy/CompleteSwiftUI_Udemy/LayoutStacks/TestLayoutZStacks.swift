//
//  TestLayoutZStacks.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 12/11/2022.
//

import SwiftUI

struct TestLayoutZStacks: View {
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: "cloud")
                    .font(.system(size: 50))
                Text("United State")
                    .font(.system(size: 12))
            }
            ZStack {
                Image(systemName: "cloud")
                    .font(.system(size: 50))
                Text("United State")
                    .foregroundColor(Color.yellow)
                    .background(Color.red)
                    .zIndex(-1)
            }
            ZStack {
                Image(systemName: "cloud")
                    .font(.system(size : 50))
                Text("United State")
            }.foregroundColor(Color.red)
            ZStack(alignment: .bottom) {
                Image(systemName: "cloud")
                    .font(.system(size : 100))
                Text("United State")
            }
            ZStack(alignment: .center) {
                Image(systemName: "cloud")
                    .font(.system(size : 100))
                Text("United State")
            }
            ZStack(alignment: .top) {
                Image(systemName: "cloud")
                    .font(.system(size : 100))
                Text("United State")
            }
        }
    }
}

struct TestLayoutZStacks_Previews: PreviewProvider {
    static var previews: some View {
        TestLayoutZStacks()
    }
}
