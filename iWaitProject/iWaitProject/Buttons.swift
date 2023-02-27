//
//  Buttons.swift
//  iWaitProject
//
//  Created by Francesco on 22/02/23.
//

import SwiftUI

struct Buttons: View {
    var tex: Int
    @State var isUnlocked: [Bool] = [false,false,false]
    var body: some View {
        
        ZStack{
            Color(.systemGray5)
            VStack{
                // Spacer()
                Image("clocheUp")
                    
                //Spacer()
                NavigationLink {
                    //ChapterOneCardView()
                    NewCardView()
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
                    Text("Collega le parole") }
            label: {
                if(isUnlocked[1]){
                    Image("Group")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                else{Image("Group 36")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
            }
                NavigationLink {
                    Text("Mini-Game")}
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
        
        
    }
}





struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(tex: 0)
    }
}

