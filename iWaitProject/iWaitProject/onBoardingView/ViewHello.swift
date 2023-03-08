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
            
            Text("")
                .font(.custom("SFPro",size: 25))
                .bold()
                .position(x: 170,y: 180)
            
            VStack(alignment: .center){
                Spacer()
                //grassetto
                Text(" **Quanto ne sai del servizio al tavolo in un ristorante?** \n")
                    .font(.custom("SFPro",size: 17))
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text("Leggi, gioca e impara per capirne di più per essere un bravo cameriere ")
                    .font(.custom("SFPro",size: 17))
                    .font(.body)
                    .multilineTextAlignment(.center)
                
            }.frame(width: 346,height: 116)
            
        }
    }
}

struct ViewHello_Previews: PreviewProvider {
    static var previews: some View {
        ViewHello()
    }
}
