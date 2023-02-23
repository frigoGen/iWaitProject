//
//  CardView.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 22/02/23.
//

import SwiftUI

struct CardView: View {
    @State private var offset = CGSize.zero
    var card: CardModel
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack(alignment: .center) {
                //text of the card
                //Text(card.testo)
                Text(card.testo)
                    .font(.custom("SFPro-Medium", size: 17))
                    .padding(15.0)
                    .frame(width: geometry.size.width * 0.99, height: geometry.size.height).scaledToFill()
                    .multilineTextAlignment(.center)
                    .bold()
                    .clipped()
                
            }.padding(.bottom)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(radius: 5)
            
                .offset(x: self.offset.width * 1, y: offset.height * 0.4)
                .rotationEffect(.degrees(Double(offset.width / 40)))
            
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }.onEnded { _ in
                            withAnimation{
                                swipeCard(width: offset.width)
                            }
                        }
                )
            
        }
    }
    
  func swipeCard(width: CGFloat){
            switch width {
            case -500...(-150):
                print("\(card) next ")
                offset = CGSize(width: -500, height: 0)
            case 150...(550):
                print("\(card) previous ")
                offset = CGSize(width: 500, height: 0)
            default:
                offset = .zero
            }
        }
    }


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: CardModel (id:0, testo: "La brigata in generale può essere schematizzata in modo gerarchico. In primo luogo abbiamo il Maitre d’hotel, dopodiché ci sono lo chef de rang e lo chef ai vini, ed infine il commis de rang.")).frame(height: 650)
            .padding()
        
    }
}
