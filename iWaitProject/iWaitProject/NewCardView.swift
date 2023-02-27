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
    var tex: Int
        var body: some View {
                        TabView {
                            ForEach(card[tex].Card) { cards in
                                VStack{
                                    ZStack{
                                        Text(cards.Text)
                                            .font(.body)
                                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    }
                                }
                                        }
                        }
                        .tabViewStyle(PageTabViewStyle())
                    }
        }

struct NewCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewCardView(tex: 0)
            .padding()
        
    }
}

