//
//  CustomLayoutTest.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 19/11/2022.
//

import SwiftUI

struct CustomLayoutTest: View {
    @State private var selected : Bool = true
    var body: some View {
        let SelectedLayout = selected ? AnyLayout(MyLayout()) : AnyLayout(VStackLayout(alignment: .leading))
        VStack(alignment: .leading) {
            Toggle(isOn: $selected, label: {
                Text(selected ? "Custom" : "Standard")
            }).padding(.bottom)
            SelectedLayout {
                Group {
                    Text("First")
                        .padding(10)
                        .background(Color.red)
                        .cornerRadius(8)
                    Text("Second")
                        .padding(10)
                        .background(Color.green)
                        .cornerRadius(8)
                    Text("Third")
                        .padding(10)
                        .background(Color.pink)
                        .cornerRadius(8)
                }
            }
        }.padding()
        .font(.title)
    }
}

struct MyLayout : Layout {
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var posX : CGFloat = bounds.origin.x
        var posY : CGFloat = bounds.origin.y
        for (index, view) in subviews.enumerated() {
            if index > 0 {
                posY += 10
                posX += 30
            }
            view.place(at: CGPoint(x: posX, y: posY), proposal: .unspecified)
            posY += view.sizeThatFits(.unspecified).height
        }
    }
    
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        var totalWidth : CGFloat = 0
        var totalHeight : CGFloat = 0
        
        for(index,view) in subviews.enumerated() {
            if index > 0 {
                totalHeight += 10
            }
            let viewSize = view.sizeThatFits(.unspecified)
            totalWidth += viewSize.width + CGFloat(30 * index)
            totalHeight += viewSize.height
        }
        return CGSize(width: totalWidth, height: totalHeight)
    }
}

struct CustomLayoutTest_Previews: PreviewProvider {
    static var previews: some View {
        CustomLayoutTest()
    }
}
