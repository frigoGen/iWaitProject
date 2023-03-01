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
        ZStack{
            Color(uiColor: UIColor(red: 0.93, green: 0.89, blue: 0.64, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            TabView {
                ForEach(card[tex].Card) { cards in
                    ZStack{
                        VStack(alignment: .center){
                            Spacer()
                            Image("card1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 355,height: 370)
                                .padding(.top,50)
                            Text(cards.Text)
                                .frame(width: 300,height: 300)
                                .font(.custom("SFPro-Medium",size: 17))
                                .fontWeight(.heavy)
                                .font(.body)
                                .padding(.bottom,50)
                                .scaledToFill()
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        .padding()
                        
                    }
                }
                NavigationLink(destination: Buttons(tex: tex, mode: true).navigationBarBackButtonHidden(true)) {
                    ZStack{
                        Image("Question")
                        Text("Sblocca il Quiz")
                            .foregroundColor(Color.black)
                            .font(.custom("SFPro-Medium",size: 17))
                            .fontWeight(.heavy)
                        .font(.body)
                        
                    }
                }
                .simultaneousGesture(TapGesture().onEnded{
                    isUnlocked[tex] = true
                })
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
        
    }
}

struct NewCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewCardView(tex: 0)
            .padding()
        
    }
}

