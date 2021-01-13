//
//  TextViews.swift
//  Bullseye
//
//  Created by A.M. Student on 1/12/21.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextView"))
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextView"))
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
        InstructionText(text: "Instruction")
        BigNumberText(text: "999")
        }
    }
}
