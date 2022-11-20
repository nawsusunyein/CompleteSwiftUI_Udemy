//
//  ViewBuilderTestOne.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 20/11/2022.
//

import SwiftUI

struct ViewBuilderTestOne: View {
    var body: some View {
        VStack {
            Text("Your name")
            getView()
        }
    }
    
    @ViewBuilder
    func getView() -> some View {
        let valid = false
        if valid {
            Image(systemName: "keyboard")
        } else {
            EmptyView()
        }
    }
}

struct ViewBuilderTestOne_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderTestOne()
    }
}
