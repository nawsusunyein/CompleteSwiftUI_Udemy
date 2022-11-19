//
//  GroupTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 19/11/2022.
//

import SwiftUI

struct GroupTest: View {
   
    var body: some View {
        VStack {
            Group {
                Text("Hello Su Su")
                Text("Hello World")
            }.foregroundColor(Color.red)
            Group {
                Text("Manchester")
                Text("United")
            }.font(.largeTitle)
           
        }
    }
}

struct GroupTest_Previews: PreviewProvider {
    static var previews: some View {
        GroupTest()
    }
}
