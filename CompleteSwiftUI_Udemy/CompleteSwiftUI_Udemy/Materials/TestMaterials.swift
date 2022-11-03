//
//  TestMaterials.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 03/11/2022.
//

import SwiftUI

struct TestMaterials: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding(20)
                .background(Color(.red))
                .foregroundStyle(.thinMaterial)
                
            Text("Hello Myanmar")
                .padding(20)
                .background(Color(.red))
                .foregroundStyle(.thickMaterial)
            Text("Hello Hellow")
                .font(.largeTitle)
                .padding(20)
                .background(Color(.red))
                .foregroundStyle(.ultraThinMaterial)
            Text("Test Ultra Thick")
                .font(.largeTitle)
                .padding(20)
                .background(Color(.red))
                .foregroundStyle(.ultraThickMaterial)
        }
        
    }
}

struct TestMaterials_Previews: PreviewProvider {
    static var previews: some View {
        TestMaterials()
    }
}
