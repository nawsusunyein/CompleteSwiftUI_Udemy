//
//  StateStructureTestOne.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 25/11/2022.
//

import SwiftUI

struct StateStructureTestOne: View {
    @State private var title = "Hello Title"
    @State private var titleInput = ""
    var body: some View {
        VStack {
            HeaderViewOne(title: $title)
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

struct HeaderViewOne : View {
    
    @Binding var title : String
    let counter : Int
    
    init(title : Binding<String>) {
        _title = title
        let sentence = _title.wrappedValue
        counter = sentence.count
    }
    
    var body : some View {
        Text("\(title) \(counter)")
            .padding()
    }
}

struct StateStructureTestOne_Previews: PreviewProvider {
    static var previews: some View {
        StateStructureTestOne()
    }
}
