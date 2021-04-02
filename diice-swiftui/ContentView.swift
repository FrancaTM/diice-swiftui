//
//  ContentView.swift
//  diice-swiftui
//
//  Created by Tulio Marcos Franca on 26/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 64, height: 64)
                    Text("Diice")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                Spacer()
                HStack {
                    DiceView(number: 1)
                    DiceView(number: 6)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 55))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.orange)
            }
        }
    }
}

struct DiceView: View {
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

