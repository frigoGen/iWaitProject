//
//  ViewHello.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 02/03/23.
//

import SwiftUI

struct ViewHello: View {
    var body: some View {
        ZStack{
            Image("immaginesalve")
            
            /*Text("Salve")
                .font(.custom("SFPro",size: 25))
                .bold()
                .position(x: 250,y: 162)*/
            
            VStack(alignment: .center){
                Spacer()
                //grassetto
                if(saveData.cacao.language == 2){
                     Text(" **Quanto você sabe sobre serviço de mesa em um restaurante?** \n")
                     .font(.custom("SFPro",size: 17))
                     .bold()
                     .multilineTextAlignment(.center)
                     
                     Text("Leia, brinque e aprenda a entender mais sobre ser um bom garçom")
                     .font(.custom("SFPro",size: 17))
                     .font(.body)
                     .multilineTextAlignment(.center)
             }
               else if(saveData.cacao.language == 1){
                    Text(" **Quanto ne sai del servizio al tavolo in un ristorante?** \n")
                    .font(.custom("SFPro",size: 17))
                    .bold()
                    .multilineTextAlignment(.center)
                    
                    Text("Leggi, gioca e impara per capirne di più per essere un bravo cameriere ")
                    .font(.custom("SFPro",size: 17))
                    .font(.body)
                    .multilineTextAlignment(.center)
            }
                else{Text(" **How much do you know about table service in a restaurant?** \n")
                        .font(.custom("SFPro",size: 17))
                        .bold()
                        .multilineTextAlignment(.center)
                        
                        Text("Read, play and learn to understand more about being a good waiter")
                        .font(.custom("SFPro",size: 17))
                        .font(.body)
                        .multilineTextAlignment(.center)}
            }.frame(width: 346,height: 116)
            
        }
    }
}

struct ViewHello_Previews: PreviewProvider {
    static var previews: some View {
        ViewHello()
    }
}
