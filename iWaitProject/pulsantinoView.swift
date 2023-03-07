//
//  pulsantinoView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 02/03/23.
//

import SwiftUI

struct pulsantinoView: View {
    var tex: Int
    var score: Int
    var body: some View {
        
        VStack{
            Image("clocheUp")
            ZStack{
                Image("Fiesta")
                if(self.score<5){
                    Text("\(self.score)/12").foregroundColor(.orange)}
                else if(self.score<=7 && self.score>=5){
                    Text("\(self.score)/12").foregroundColor(.yellow)}
                else{
                    Text("\(self.score)/12").foregroundColor(.green)}
            }
            Image("cloche")
            if(self.score<5){Text("Troppi Errori")}
            else if(self.score<=7 && self.score>=5){Text("Puoi Migliorare, manca poco. Ritenta")}
            else{
                
                Text("Congratulazioni, hai sbloccato il livello successivo")
                    .onAppear{
                        incrediPush()
                    }
            }
                
            NavigationLink(destination: {Buttons(tex: tex, mode: true).navigationBarBackButtonHidden(true)}, label: {ZStack{
                    Image("Question")
                    Text("Ritorna")
                    
                }})
        }
        
        
    }
    func incrediPush(){
        saveData.modulo = isUnlocked
    }
}

struct pulsantinoView_Previews: PreviewProvider {
    static var previews: some View {
        pulsantinoView(tex: 0, score: 5)
    }
}
