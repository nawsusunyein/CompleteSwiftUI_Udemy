//
//  ButtonTestOne.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 25/11/2022.
//

import SwiftUI

struct ButtonTestOne: View {
    
    @State private var expanded : Bool = false
    @State private var color = Color.gray
    
    var body: some View {
        VStack {
            Text("Default Text")
                .frame(minWidth: 0, maxWidth: expanded ? .infinity : 150, maxHeight: 50)
                .background(Color.yellow)
            Button(action: {
                expanded.toggle()
            }, label: {
                Text(expanded ? "Contact" : "Expand")
            })
            HStack {
                Button("Cancel") {
                    print("Cancel action")
                }.buttonStyle(.bordered)
                Spacer()
                Button("Send") {
                    print("Send action")
                }.buttonStyle(.borderedProminent)
                Spacer()
                Button("Delete", role: .destructive) {
                    print("Delete action")
                }.buttonStyle(.bordered)
            }
            HStack {
                Button(action: {
                    print("test image button text")
                }, label: {
                    HStack {
                        Image(systemName: "mail")
                            .imageScale(.large)
                        Text("Send")
                    }
                })
                .buttonStyle(.borderedProminent)
                .font(.largeTitle)
                .controlSize(.large)
            }
            Text("Third Default Title")
                .foregroundColor(color)
            Button("Change Color") {
                color = Color.green
            }.buttonStyle(MyStyle())
        }
    }
}

struct MyStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        let pressed = configuration.isPressed
        return configuration.label
            .padding()
            .border(Color.green, width: 5)
            .scaleEffect(pressed ? 1.2 : 1.0)
    }
}

struct ButtonTestOne_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTestOne()
    }
}
