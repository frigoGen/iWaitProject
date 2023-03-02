//
//  ViewEnd.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 02/03/23.
//

import SwiftUI

struct ViewEnd: View {
    var body: some View {
        ZStack{
            Image ("immaginebadge")
            Text(" Ottieni badge e personalizza la tua bacheca! ")
                .font(.custom("SFPro",size: 17))
                .font(.body)
                .multilineTextAlignment(.center)
            
        }
        
    }
}

struct ViewEnd_Previews: PreviewProvider {
    static var previews: some View {
        ViewEnd()
    }
}
