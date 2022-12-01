//
//  TextfieldTestTwo.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 01/12/2022.
//

import SwiftUI

enum FocusName : Hashable {
    case name
    case surname
}

struct TextfieldTestTwo: View {
    
    @FocusState var focusName : FocusName?
    @State private var title : String = "Default Title"
    @State private var nameInput : String = ""
    @State private var surnameInput : String = ""
    
    var body: some View {
        VStack(spacing : 10) {
            Text(title)
                .padding()
                .background(Color.yellow)
            TextField("Insert name",text:  $nameInput)
                .textFieldStyle(.roundedBorder)
                .padding()
                .background(focusName == .name ? Color(white : 0.9): Color.white)
                .focused($focusName, equals: .name)
                .onChange(of: nameInput) {value in
                    if value.count > 10 {
                        nameInput = String(value.prefix(10))
                    }
                }
            TextField("Inser surname", text: $surnameInput)
                .textFieldStyle(.roundedBorder)
                .padding()
                .background(focusName == .surname ? Color(white : 0.9) : Color.white)
                .focused($focusName, equals: .surname)
                .onChange(of: surnameInput) {value in
                    if value.count > 15 {
                        surnameInput = String(value.prefix(15))
                    }
                 }
            Button("Save") {
                let tempName = nameInput.trimmingCharacters(in: .whitespaces)
                let tempSurname = surnameInput.trimmingCharacters(in: .whitespaces)
                
                if !tempName.isEmpty && !tempSurname.isEmpty {
                    title = nameInput + " " + surnameInput
                    focusName = nil
                }
            }
            .disabled(nameInput.isEmpty || surnameInput.isEmpty)
        }
    }
}

struct TextfieldTestTwo_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldTestTwo()
    }
}
