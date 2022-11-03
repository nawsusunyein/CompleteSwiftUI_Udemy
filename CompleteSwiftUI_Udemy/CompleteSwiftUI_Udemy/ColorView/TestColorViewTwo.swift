//
//  TestColorViewTwo.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 03/11/2022.
//

import SwiftUI

struct TestColorViewTwo: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding(25)
                .foregroundColor(Color.green)
                .background(Color.gray)
                .border(Color.yellow, width: 10)
                .cornerRadius(15)
                .overlay(Color(red : 0.2, green : 0.2, blue : 0.2 , opacity: 0.3).frame(width: 100, height: 50))
            Text("Test gradient")
                .padding(25)
                .background(Color.gray.gradient)
                .cornerRadius(20)
        }
    }
}

struct TestColorViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TestColorViewTwo()
    }
}
