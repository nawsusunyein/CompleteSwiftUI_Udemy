//
//  GroupTestOne.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 19/11/2022.
//

import SwiftUI

struct GroupTestOne: View {
    var body: some View {
        let valid = false
        return Group {
            if valid {
                Image(systemName: "keyboard")
                    .frame(width: 100, height: 100)
            } else {
                Text("The state is invalid")
            }
        }
    }
}

struct GroupTestOne_Previews: PreviewProvider {
    static var previews: some View {
        GroupTestOne()
    }
}
