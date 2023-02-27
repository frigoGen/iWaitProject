//
//  NewCardView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 27/02/23.
//


import SwiftUI

var card: [CardModelUp] = load("Teoria[PTG]")
// i bottoni indietro alla view si mette in automaticivo dalla view parent
struct NewCardView: View {
    
    var body: some View {
        
        
        GeometryReader { geometry in
            
            VStack(alignment: .leading) {
                
                //text of the card
                //Text(card.testo)
                Text(card[0].Card[2].Text)
                    .font(.custom("SFPro-Medium", size: 17))
                    .padding(15.0)
                    .frame(width: geometry.size.width * 0.99, height: geometry.size.height).scaledToFill()
                    .multilineTextAlignment(.center)
                    .bold()
                    .clipped()
                
                
            }
            .background(Color.white)
            .cornerRadius(16)
            .shadow(radius: 5)
         
            
            
        }
    }
}
 


struct NewCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewCardView()
            .padding()
        
    }
}

