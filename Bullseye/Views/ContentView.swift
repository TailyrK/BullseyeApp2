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
            
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
               InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
                BigNumberText(text: String(game.target))
                HStack {
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextView"))
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .bold()
                        .foregroundColor(Color("TextView"))
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
                .background(ZStack {
                    Color("ButtnColor")
                    LinearGradient(gradient:
                    Gradient(colors: [Color.white.opacity(0.3),
                                      Color.clear]), startPoint: .top, endPoint: .bottom)
                })
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
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
