//
//  ContentView.swift
//  first app
//
//  Created by USER on 30/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        var card1 = "back"
        var card2 = "back"
        ZStack(){
            Image("background-wood-grain")
                .ignoresSafeArea()
            VStack() {
                Spacer()
                Image("logo")
                Spacer()
                HStack(){
                    Image(card1).padding()
                    Image(card2).padding()
                }
                Spacer()
                ZStack(){
                    Button(action:{
                        card1 = "card3"
                    },label:{
                        Image("button")
                    }).padding()
                    
                }
                
                Spacer()
                HStack(){
                    VStack(){
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }.padding()
                    VStack(){
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }.padding()
                }
                Spacer()
            }
            .padding()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(/*@START_MENU_TOKEN@*/"iPhone 14 Pro"/*@END_MENU_TOKEN@*/)
    }
}
