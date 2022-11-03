//
//  TestSFSymbols.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 04/11/2022.
//

import SwiftUI

struct TestSFSymbols: View {
    let myFont = Font.system(size: 50)
    var body: some View {
        VStack {
            Image(systemName: "envelope")
            Image(systemName: "envelope")
                .font(Font.system(size: 50))
            Image(systemName: "envelope")
                .font(myFont.weight(.bold))
            Image(systemName: "envelope.fill")
                .font(myFont.weight(.semibold))
            Image(systemName: "mic.badge.plus")
                .font(myFont)
            Image(systemName: "mic.badge.plus")
                .font(myFont)
                .symbolVariant(.fill)
                .symbolRenderingMode(.multicolor)
            Image(systemName: "mic.badge.plus")
                .font(myFont)
                .symbolVariant(.fill)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .green)
            Image(systemName: "mic.badge.plus")
                .font(myFont)
                .foregroundColor(.red)
        }
        
    }
}

struct TestSFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        TestSFSymbols()
    }
}
