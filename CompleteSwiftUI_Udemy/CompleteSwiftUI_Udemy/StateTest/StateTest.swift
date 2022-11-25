//
//  StateTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 20/11/2022.
//

import SwiftUI

struct StateTest: View {
    
    @State private var title : String = "Default Title"
    @State private var titleActive : Bool = false
    @State private var titleInput : String = ""
    var body: some View {
        VStack {
            Text(title)
                .padding(10)
                .foregroundColor(titleActive ? Color.red : Color.gray)
            TextField("Insert Title", text : $titleInput)
                .textFieldStyle(.roundedBorder)
            Button(action: {
                title = titleInput
                titleActive = true
                titleInput = ""
            }, label: {
                Text("Change Title")
            })
        }.padding(15)
    }
}

struct StateTest_Previews: PreviewProvider {
    static var previews: some View {
        StateTest()
    }
}
