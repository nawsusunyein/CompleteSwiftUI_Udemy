//
//  TextfieldTestThree.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 01/12/2022.
//

import SwiftUI

class ContentViewData : ObservableObject {
    @Published var title : String = "Default Name"
    @Published var numberInput : String = ""
    var currentNumber = ""
}

struct TextfieldTestThree: View {
    
    @ObservedObject var contentData = ContentViewData()
    
    var body: some View {
        VStack {
            Text(contentData.title)
            TextField("Insert Number", text: $contentData.numberInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .keyboardType(.numbersAndPunctuation)
                .onChange(of: contentData.numberInput) {value in
                    if !value.isEmpty {
                        if Int(value) != nil {
                            contentData.currentNumber = contentData.numberInput
                        } else {
                            contentData.numberInput = contentData.currentNumber
                        }
                    } else {
                        contentData.currentNumber = ""
                    }
                }
            Button("Save") {
                contentData.title = contentData.numberInput
                contentData.numberInput = ""
            }
        }
    }
}

struct TextfieldTestThree_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldTestThree()
    }
}
