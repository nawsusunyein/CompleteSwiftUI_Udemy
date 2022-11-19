//
//  CustomViewTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 19/11/2022.
//

import SwiftUI

struct CustomViewTest: View {
    var body: some View {
        Grid {
            GridRow {
                Image(systemName: "mic")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                ExtractedView()
            }
        }
    }
}

struct ExtractedView : View {
    var body : some View {
        Grid {
            GridRow {
                Text("Hello Manchester")
            }
            GridRow {
                Text("Hello United")
            }
        }
    }
}

struct CustomViewTest_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewTest()
    }
}
