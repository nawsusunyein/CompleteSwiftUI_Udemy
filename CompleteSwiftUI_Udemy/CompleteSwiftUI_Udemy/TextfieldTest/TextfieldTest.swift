//
//  TextfieldTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 01/12/2022.
//

import SwiftUI

struct TextfieldTest: View {
    
    @State private var title : String = "Default Title"
    @State private var titleInput : String = ""
    
    var body: some View {
        VStack(spacing : 15) {
            Text(title)
                .padding()
                .background(Color.yellow)
            TextField("Insert title", text : $titleInput)
                .textFieldStyle(.roundedBorder)
            Button("Save") {
                title = titleInput
                titleInput = ""
            }
            Spacer()
        }.padding()
    }
}

struct TextfieldTest_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldTest()
    }
}
