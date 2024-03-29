//
//  NewCardView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 27/02/23.
//


import SwiftUI
import Foundation

var markdownText: AttributedString = ""
public var CardArray: [String] = ["Teoria[ENG]","Teoria[ITA]","Teoria[PTG]"]
public var card: [CardModelUp] = load(CardArray[saveData.cacao.language])
public let colors: [UIColor] = [UIColor(red: 0.93, green: 0.89, blue: 0.64, alpha: 0.65),UIColor(red: 0.93, green: 0.89, blue: 0.64, alpha: 0.65),UIColor(red: 0.71, green: 0.94, blue: 0.81, alpha: 0.65)]
// i bottoni indietro alla view si mette in automaticivo dalla view parent
struct NewCardView: View {
    
    var tex: Int
    let images: [String] = ["teoria1","teoria2","teoria3"]
    var body: some View {
        ZStack{
            Color(uiColor: colors[tex])
                .edgesIgnoringSafeArea(.all)
            TabView {
                VStack{
                    Text(card[tex].first[0])
                        .font(.custom("SFPro-Medium",size: 17))
                        .bold()
                        .font(.body)
                        .padding(.bottom,109)
                        //.scaledToFill()
                        //.frame(width: 200,height: 30)
                        .multilineTextAlignment(.center)
                    //Spacer()
                    HStack{
                        Spacer()
                        VStack(spacing: 16){
                            HStack{
                                Circle()
                                    .fill(Color(uiColor: UIColor(red: 0.92, green: 0.50, blue: 0.01, alpha: 1.00)))
                                    .frame(width: 10, height: 10)
                                Text(card[tex].first[1])
                            }
                            HStack{
                                Circle()
                                    .fill(Color(uiColor: UIColor(red: 0.92, green: 0.50, blue: 0.01, alpha: 1.00)))
                                    .frame(width: 10, height: 10)
                                Text(card[tex].first[2])
                            }
                            HStack{
                                Circle()
                                    .fill(Color(uiColor: UIColor(red: 0.92, green: 0.50, blue: 0.01, alpha: 1.00)))
                                    .frame(width: 10, height: 10)
                                Text(card[tex].first[3])
                                   
                                
                            }
                            Image(images[tex])
                                .resizable()
                                .scaledToFit()
                        }
                    
                        Spacer()
                    }//.frame(width: 200,height: 50)
                    
                    
                    //Image("card1")
                    
                }
                ForEach(card[tex].Card) { cards in
                   // markdownText = try! AttributedString(markdown: cards.Text)
                    ZStack{
                        VStack(alignment: .center){
                            Spacer()
                            Image(cards.Image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 355,height: 370)
                                .padding(.top,50)
                            Text(.init(cards.Text))
                           // Text(try! AttributedString(markdown: cards.Text, options: .inlineOnlyPreservingWhitespace))
                                .frame(width: 300,height: 300)
                                .font(.custom("SFPro-Medium",size: 17))
                                .fontWeight(.heavy)
                                .font(.body)
                                .padding(.bottom,50)
                                .scaledToFill()
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .padding()
                        
                    }
                }
                NavigationLink(destination: Buttons(tex: tex, mode: true).navigationBarBackButtonHidden(true)) {
                    ZStack{
                        Image("Question")
                        if(saveData.cacao.language == 1){
                        Text("Sblocca il Quiz")
                            .foregroundColor(Color.black)
                            .font(.custom("SFPro-Medium",size: 17))
                            .fontWeight(.heavy)
                        .font(.body)}
                        else if(saveData.cacao.language == 0){
                            Text("Unlock the Quiz")
                                .foregroundColor(Color.black)
                                .font(.custom("SFPro-Medium",size: 17))
                                .fontWeight(.heavy)
                            .font(.body)}
                        else{
                        Text("Desbloquear o questionário")
                            .foregroundColor(Color.black)
                            .font(.custom("SFPro-Medium",size: 17))
                            .fontWeight(.heavy)
                        .font(.body)}
                        
                    }
                }
                .simultaneousGesture(TapGesture().onEnded{
                    isUnlocked[tex][0] = true
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

