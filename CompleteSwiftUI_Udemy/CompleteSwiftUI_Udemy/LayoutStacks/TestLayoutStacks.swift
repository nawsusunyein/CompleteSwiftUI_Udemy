//
//  TestLayoutStacks.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 11/11/2022.
//

import SwiftUI

struct TestLayoutStacks: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello")
            HStack(alignment: .center, spacing: 15) {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                Text("United State of America Blah Blah Blah Blah")
            }
            HStack(alignment: .bottom, spacing: 15) {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                Text("United State of America Blah Blah Blah Blah")
            }
            HStack(alignment: .lastTextBaseline, spacing: 15) {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                Text("United State of America Blah Blah Blah Blah")
            }
            HStack(alignment: .top, spacing: 15) {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                Text("United State of America Blah Blah Blah Blah")
            }
            HStack(alignment: .firstTextBaseline, spacing: 15) {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                Text("United State of America Blah Blah Blah Blah")
            }
        }
    }
}

struct TestLayoutStacks_Previews: PreviewProvider {
    static var previews: some View {
        TestLayoutStacks()
    }
}
