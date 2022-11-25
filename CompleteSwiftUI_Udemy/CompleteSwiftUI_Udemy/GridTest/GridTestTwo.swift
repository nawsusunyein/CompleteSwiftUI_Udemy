//
//  GridTestTwo.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 19/11/2022.
//

import SwiftUI

struct GridTestTwo: View {
    var body: some View {
        Grid {
            GridRow {
                Image(systemName: "phone")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                GridRow {
                    VStack {
                        Text("Here, I'm")
                        Text("Here, here")
                    }
                }
//                Grid (alignment: .leading){
//                    GridRow {
//                        Text("Here, I'm")
//                    }
//                    GridRow {
//                        Text("Here, here")
//                    }
//                }
            }
        }.font(.title2)
    }
}

struct GridTestTwo_Previews: PreviewProvider {
    static var previews: some View {
        GridTestTwo()
    }
}
