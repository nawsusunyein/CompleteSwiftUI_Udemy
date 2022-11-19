//
//  GridTestOne.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 19/11/2022.
//

import SwiftUI

struct GridTestOne: View {
    var body: some View {
        Grid(verticalSpacing: 5){
            GridRow {
                Text("Send us message")
            }.gridCellColumns(2)
            GridRow {
                Image(systemName: "message")
                    .frame(width: 100, height: 100)
                Image(systemName: "mic")
                    .frame(width: 100, height: 100)
            }.background(Color.blue)
        }.font(.title2)
    }
}

struct GridTestOne_Previews: PreviewProvider {
    static var previews: some View {
        GridTestOne()
    }
}
