//
//  GenericViewTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 20/11/2022.
//

import SwiftUI

struct GenericViewTest: View {
    var body: some View {
        getView()
    }
    
    func getView() -> AnyView {
        let valid = false
        var myView : AnyView!
        
        if valid {
            myView = AnyView(Image(systemName: "keyboard"))
        } else {
            myView = AnyView(Text("The state is invalid"))
        }
        return myView
    }
}

struct GenericViewTest_Previews: PreviewProvider {
    static var previews: some View {
        GenericViewTest()
    }
}
