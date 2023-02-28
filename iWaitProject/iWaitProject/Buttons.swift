//
//  Buttons.swift
//  iWaitProject
//
//  Created by Francesco on 22/02/23.
//

import SwiftUI

struct Buttons: View {
    var tex: Int
    @State var isUnlocked: [Bool] = [true,false,false]
    var body: some View {
        
        ZStack{
            Color(.systemGray5)
            VStack{
                // Spacer()
                Image("clocheUp")
                    
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
            .padding(.bottom)
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
                NavigationLink {
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
            }
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
            }
                Image("cloche")
                //}
                
                
            }
            
            
        }
        .ignoresSafeArea()
       // .frame(width:500,height:900)
        
        
    }
}





struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(tex: 0)
    }
}

