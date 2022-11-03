//
//  TestImageViewTwo.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 04/11/2022.
//

import SwiftUI

struct TestImageViewTwo: View {
    var body: some View {
        VStack {
            Image("tokyo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
            Image("tokyo")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 100)
                .clipped()
            Image("tokyo")
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .padding(20)
                .shadow(color: Color.black, radius: 5, x: 5, y: 5)
            Image("tokyo")
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .padding(20)
                .scaleEffect(CGSize(width: 1.0, height: 1.0))
                .blur(radius: 10)
        }
    }
}

struct TestImageViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TestImageViewTwo()
    }
}
