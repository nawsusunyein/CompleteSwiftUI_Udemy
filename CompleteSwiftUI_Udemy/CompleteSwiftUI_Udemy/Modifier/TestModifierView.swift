//
//  TestModifierView.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 03/11/2022.
//

import SwiftUI

struct TestModifierView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, Korea!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle).foregroundColor(.green)
                .frame(width: 200,height: 100,alignment: .leading)
            Text("Hello Mandalay")
                .font(.title)
                .frame(minWidth: 50, maxWidth: 150)
            Text("Hello Yangon")
                .font(.caption2)
                .frame(minWidth: 100, maxWidth: .infinity)
            Text("Hello Bagan")
                .font(.headline)
                .padding(25)
            Text("Hello Magway")
                .font(.callout)
                .padding([.top, .bottom], 25)
            Text("Hello MyaungMya")
                .font(.subheadline)
                .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
            Text("Test bold")
                .bold(true)
            Text("Test Italic")
                .italic(true)
            Text("Test font weight").fontWeight(.ultraLight)
            Text("Test case")
                .textCase(.lowercase)
        }
    }
}

struct TestModifierView_Previews: PreviewProvider {
    static var previews: some View {
        TestModifierView()
    }
}
