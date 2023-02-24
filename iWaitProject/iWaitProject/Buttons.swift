//
//  Buttons.swift
//  iWaitProject
//
//  Created by Francesco on 22/02/23.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
 
                
        NavigationView{VStack{
           // Spacer()
            Image("Group 0")
                .padding(.top, 100.0)
            Spacer()
                    NavigationLink {
                        Text("Ciao") }
                            label: {
                                Image("Group2")
                        }
            NavigationLink {
                QuizView()  }
                        label: {
                            Image("Group 3")
                        }
            NavigationLink {
                Text("Collega le parole") }
                        label: {
                            Image("Group 4")
                        }
            NavigationLink {
                Text("Mini-Game")}
                        label: {
                            Image("Group 5")
                        }
            
 }

            
                }
       
            }
            
        }
        
        
    

    
    struct Buttons_Previews: PreviewProvider {
        static var previews: some View {
            Buttons()
        }
    }

