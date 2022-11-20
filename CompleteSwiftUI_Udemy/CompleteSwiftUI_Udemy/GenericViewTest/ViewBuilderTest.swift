//
//  ViewBuilderTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 20/11/2022.
//

import SwiftUI

struct ViewBuilderTest: View {
    var body: some View {
        getView()
    }
    
    @ViewBuilder
    func getView() -> some View {
        let valid = true
        if valid {
            Image(systemName: "keyboard")
        } else {
            Text("The state is invalid")
        }
    }
}

struct ViewBuilderTest_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderTest()
    }
}
