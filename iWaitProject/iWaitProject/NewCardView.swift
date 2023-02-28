//
//  NewCardView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 27/02/23.
//


import SwiftUI

public var card: [CardModelUp] = load("Teoria[PTG]")
// i bottoni indietro alla view si mette in automaticivo dalla view parent
struct NewCardView: View {
    var tex: Int
    var body: some View {
        TabView {
            
            ForEach(card[tex].Card) { cards in
                ZStack{
                    Color(uiColor: UIColor(red: 0.93, green: 0.89, blue: 0.64, alpha: 1.00))
                        //.scaledToFill()
                        
                    VStack(alignment: .center){
                        Image("card1")
                            .resizable()
                            .position(x:70,y:200)
                            .scaledToFit()
                            
                        Text(cards.Text)
                            .frame(width: 300,height: 500)
                            .font(.body)
                            .fontWeight(.heavy)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .scaledToFill()
                            .multilineTextAlignment(.center)
                        //Spacer()
                        if(cards.id == 10){
                                NavigationLink(destination: Buttons(tex: tex)) {
                                    Circle()
                                }
                                .navigationBarBackButtonHidden(true)
                        }
                    }
                    .padding()
                }
                //.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
               // .frame(width:500,height:900)
            }
        }
        
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
        //.tabViewStyle(DefaultTabViewStyle())
        
    }
}

struct NewCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewCardView(tex: 0)
            .padding()
        
    }
}

