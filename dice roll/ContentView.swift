//
//  ContentView.swift
//  dice roll
//
//  Created by will lutz on 10/25/23.
//

import SwiftUI

struct ContentView: View {
  @State private var randomValue = 0
    @State private var rotation = 0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
        .font(.system(size: 72))
            Image("pips \(randomValue)")
                .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .rotationEffect(.degrees(Double(rotation)))
            .rotation3DEffect(.degrees(Double(rotation)), axis: (x: 1, y: 1, z: 0))
            .padding ()
            .onTapGesture {
                randomValue = Int.random(in: 1...6)
                withAnimation(.default) {
                                        rotation += 360
                                    }

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
