//
//  TestColorView.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 03/11/2022.
//

import SwiftUI

struct TestColorView: View {
    var body: some View {
        VStack {
            Color(red: 0.5, green: 0.2, blue: 0.3)
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            Color(red: 0/255, green: 2/255, blue: 255/255)
                .frame(minWidth: 100, maxWidth: 150, minHeight: 100, maxHeight: 150)
                .border(.red, width: 3)
            Color(.red)
                .frame(height: 100)
            Color("MyColor")
                .frame(width: 100, height: 100)
            Color("MyColor1")
                .frame(width: 100, height: 100)
                .overlay(Color(red: 0.1, green: 0.9, blue : 0.4, opacity: 0.5).frame(width: 50, height: 50))
        }
    }
}

struct TestColorView_Previews: PreviewProvider {
    static var previews: some View {
       // TestColorView().colorScheme(.light)
        TestColorView().colorScheme(.dark)
    }
}
