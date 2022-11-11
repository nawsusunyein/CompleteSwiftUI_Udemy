//
//  TestEventModifiers.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 04/11/2022.
//

import SwiftUI

struct TestEventModifiers: View {
    let fontSize : CGFloat = 100
    
    var body: some View {
        Image(systemName: "envelope.circle.fill")
            .font(Font.system(size: fontSize))
            .onAppear(perform: {
                print("Current Font Size : \(fontSize)")
            })
    }
}

struct TestEventModifiers_Previews: PreviewProvider {
    static var previews: some View {
        TestEventModifiers()
    }
}
