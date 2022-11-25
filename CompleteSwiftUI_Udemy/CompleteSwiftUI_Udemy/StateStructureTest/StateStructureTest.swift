//
//  StateStructureTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 25/11/2022.
//

import SwiftUI

struct StateStructureTest: View {
    @State private var title : String = "Default Title"
    @State private var titleInput : String = ""
    
    init() {
        _titleInput = State(initialValue: "Hello World")
    }
    
    var body: some View {
        VStack {
            Text(_title.wrappedValue)
                .padding(10)
            TextField("Insert Title", text : _titleInput.projectedValue)
                .textFieldStyle(.roundedBorder)
            Button(action: {
                _title.wrappedValue = _titleInput.wrappedValue
                _titleInput.wrappedValue = ""
            }, label: {
                Text("Change Title")
            })
        }.padding(15)
    }
}

struct StateStructureTest_Previews: PreviewProvider {
    static var previews: some View {
        StateStructureTest()
    }
}
