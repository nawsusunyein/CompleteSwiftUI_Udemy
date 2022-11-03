//
//  ContentView.swift
//  CompleteSwiftUI_Udemy
//
//  Created by Naw Su Su Nyein on 02/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    let today = Date()
    let number : Float = 38.7234
    var body: some View {
        VStack{
            Text(today.formatted(date: .abbreviated, time: .omitted))
            Text(today.formatted(date: .complete, time: .complete))
            Text(today.formatted(date: .long, time: .shortened))
            Text(today.formatted(date: .numeric, time: .standard))
            Text(today.formatted(date: .omitted, time: .complete))
            Text(today, style : .timer)
            Text(today, style : .time)
            Text("My number is \(number.formatted(.currency(code: "USD")))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
