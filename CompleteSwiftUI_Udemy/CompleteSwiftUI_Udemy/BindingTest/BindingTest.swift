//
//  BindingTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 25/11/2022.
//

import SwiftUI

struct BindingTest: View {
    @State private var title = "Default Title"
    @State private var titleInput = ""
    var body: some View {
        VStack {
            HeaderView(title: $title)
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
            Button(action: {
                title = titleInput
                titleInput = ""
            }, label: {
                Text("Change Title")
            })
        }.padding()
    }
}

struct HeaderView : View {
    
    @Binding var title : String
    
    var body : some View {
        Text(title)
            .padding()
    }
}

struct BindingTest_Previews: PreviewProvider {
    static var previews: some View {
        BindingTest()
    }
}
