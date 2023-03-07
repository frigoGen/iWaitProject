//
//  Buttons.swift
//  iWaitProject
//
//  Created by Francesco on 22/02/23.
//

import SwiftUI

public var isUnlocked: [[Bool]] = saveData.modulo

struct Buttons: View {
    var tex: Int
    var mode: Bool
    var body: some View {
        
        ZStack{
            Color(.systemGray5)
            if(mode){
                
                NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)//.withAnimation(nil, )
                               , label: {
                    HStack(spacing:1){
                        Image(systemName: "chevron.backward")
                        Text("Back")
                    }
                    .position(x: 40,y: 80)
                })

            }
            
            VStack{
                //Spacer()
                Image("clocheUp")
                    .resizable()
                    .frame(width: 335,height: 145)
                    .padding(.bottom, 35.0)
                    .position(x:200,y: 225)
                 
                   
                    
                //Spacer()
                NavigationLink {
                    //ChapterOneCardView()
                    NewCardView(tex: tex)
                        .ignoresSafeArea()
                    }
            label: {
                ZStack{
                    Image("Etichetta")
                    .padding(.vertical,15)

                    Text("Teoria")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .font(.custom("SFPro",size: 17))
                        .bold()
                }

            }
            
                NavigationLink {
                    if(isUnlocked[tex][0]){
                        QuizView(tex: tex)}  }
            label: {
                if(isUnlocked[tex][0]){
                    ZStack{
                        Image("Etichetta")
                        .padding(.vertical,15)
                        Text("Quiz")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .font(.custom("SFPro",size: 17))
                            .bold()
                    }
                }
                else{Image("Group 36")
                    .padding(.vertical,15)}
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
                    if(isUnlocked[tex][0]){Text("WIP")}
                }
            label: {
                if(isUnlocked[tex][2]){
                    ZStack{
                        Image("Etichetta")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Text("MiniGame")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .font(.custom("SFPro",size: 17))
                            .bold()
                    }
                }
                else{Image("Group 36")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
            }
                
                Image("cloche")
                    .resizable()
                    .frame(width: 339,height: 20)
                    .padding(.top, 35)
                    .padding(.bottom, 40)
            
    
                
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

