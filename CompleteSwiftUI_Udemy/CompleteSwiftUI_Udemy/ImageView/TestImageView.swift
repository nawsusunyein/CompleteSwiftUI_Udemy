//
//  TestImageView.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 04/11/2022.
//

import SwiftUI

struct TestImageView: View {
    var body: some View {
        VStack {
            Image("husky")
            Image("tokyo")
                .frame(width: 200, height: 100)
                .clipped()
            Image("tokyo")
                .resizable()
                .frame(width: 200, height: 100)
            Image("tokyo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100)
                .clipped()
            Image("tokyo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 100)
                .clipped()
        }
    }
}

struct TestImageView_Previews: PreviewProvider {
    static var previews: some View {
        TestImageView()
    }
}
