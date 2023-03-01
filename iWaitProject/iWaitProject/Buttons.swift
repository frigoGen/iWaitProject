//
//  Buttons.swift
//  iWaitProject
//
//  Created by Francesco on 22/02/23.
//

import SwiftUI

public var isUnlocked: [Bool] = [false,false,false]

struct Buttons: View {
    var tex: Int
    var mode: Bool
    var body: some View {
        
        ZStack{
            Color(.systemGray5)
            if(mode){
                NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)//.withAnimation(nil, <#T##() -> Result#>)
                               , label: {
                    HStack(spacing:1){
                        Image(systemName: "chevron.backward")
                        Text("Back")
                    }
                    .position(x: 40,y: 80)
                })

            }
            VStack{
                // Spacer()
                Image("clocheUp")
                    .resizable()
                    .frame(width: 335,height: 145)
                    .padding(.bottom, 20.0)
                    
                //Spacer()
                NavigationLink {
                    //ChapterOneCardView()
                    NewCardView(tex: tex)
                        .ignoresSafeArea()
                    }
            label: {
                Image("Group")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            
                NavigationLink {
                    if(isUnlocked[0]){
                        QuizView(tex: tex)}  }
            label: {
                if(isUnlocked[0]){
                    Image("Group")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                else{Image("Group 36")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
            }
               /* NavigationLink {
                    if(isUnlocked[1]){
                        Text("Collega le parole") }
                }
            label: {
                if(isUnlocked[1]){
                    Image("Group")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                else{Image("Group 36")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
            }*/
                NavigationLink {
                    if(isUnlocked[0]){Text("Mini-Game")}
                }
            label: {
                if(isUnlocked[2]){
                    Image("Group")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                else{Image("Group 36")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
            }.padding(.bottom)
                
                Image("cloche")
                    .resizable()
                    .frame(width: 339,height: 20)
                    .padding(.vertical, 1)
                
                //}
                
                
            }
            
            
        }
        .ignoresSafeArea()
       // .frame(width:500,height:900)
        
        
    }
}





struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(tex: 0, mode: true)
    }
}

