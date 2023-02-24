//
//  CardView.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 22/02/23.
//

import SwiftUI
// i bottoni indietro alla view si mette in automaticivo dalla view parent
struct CardView: View {
    
    var card: CardModel
    
    var body: some View {
        
        
        GeometryReader { geometry in
            
            VStack(alignment: .leading) {
                
                //text of the card
                //Text(card.testo)
                Text(card.testo)
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
 


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: CardModel (id:0, testo: "La brigata in generale può essere schematizzata in modo gerarchico. In primo luogo abbiamo il Maitre d’hotel, dopodiché ci sono lo chef de rang e lo chef ai vini, ed infine il commis de rang."))
            .padding()
        
    }
}
