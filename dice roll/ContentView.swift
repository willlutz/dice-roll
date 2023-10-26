//
//  ContentView.swift
//  dice roll
//
//  Created by will lutz on 10/25/23.
//

import SwiftUI

struct ContentView: View {
  @State private var randomValue = 0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
        .font(.system(size: 72))
            Image("pips \(randomValue)")
                .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .padding ()
            .onTapGesture {
                randomValue = Int.random(in: 1...6)
            }
            Spacer ()
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// remote
