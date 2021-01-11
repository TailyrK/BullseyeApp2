//
//  ContentView.swift
//  Bullseye
//
//  Created by A.M. Student on 1/6/21.
//

import SwiftUI


struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    @State private var sliderValue: Double = 50.0
    
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            //rgb 243,248,253
            
            Color(red: 243.0 / 255.0, green: 248.0 / 255.0, blue: 253.0 / 255.0)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .bold()
                }
                .padding()
                Button(action: {
                    print("Hello SwiftUI")
                    self.alertIsVisible = true
                }) {
                    Text("Hit Me" .uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20.0)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
             
                
                .alert(isPresented: $alertIsVisible, content: {
                    var roundedValue: Int = Int(self.sliderValue)
                    return Alert (title: Text("Hello There!"), message: Text("The slider value is \(roundedValue). \n" + "You Scored \(self.game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
