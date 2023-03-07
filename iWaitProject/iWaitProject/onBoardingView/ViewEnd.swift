//
//  ViewEnd.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 02/03/23.
//

import SwiftUI

struct ViewEnd: View {
    var body: some View {
            VStack{
                ZStack{
                    Image ("immaginebadge")
                    Text(" Ottieni badge e personalizza la tua bacheca! ")
                        .font(.custom("SFPro",size: 17))
                        .font(.body)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)){
                        ZStack{
                            Rectangle()
                                .cornerRadius(100)
                                .frame(width: 80,height: 70)
                                .foregroundColor(Color(red: 0.82, green: 0.50, blue: 0.50))
                            
                            if(saveData.cacao.language == 1){Text("Inizia")
                                    .foregroundColor(Color.white)
                            }
                            else if(saveData.cacao.language == 2){Text("Iniza")
                                    .foregroundColor(Color.white)
                            }
                            else{Text("Start")
                                    .foregroundColor(Color.white)
                            }
                            
                        }
                    }
                    .position(x: 195,y: 550)
                }
            }
    }
}
struct ViewEnd_Previews: PreviewProvider {
    static var previews: some View {
        ViewEnd()
    }
}
