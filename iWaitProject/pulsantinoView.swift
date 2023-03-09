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
            if(self.score<5){Text("Troppi Errori").onAppear{
                saveData.score[tex] = self.score
            }}
            else if(self.score<=7 && self.score>=5){
                Text("Puoi Migliorare, manca poco. Ritenta")
                    .onAppear{
                        saveData.score[tex] = self.score
                    }
            }
            else{
                
                Text("Congratulazioni, hai sbloccato il livello successivo")
                    .onAppear{
                        incrediPush()
                    }
            }
                
            NavigationLink(destination: Buttons(tex: tex, mode: true).navigationBarBackButtonHidden(true)){
                ZStack{
                    Image("Question")
                    Text("Ritorna")
                }
                
            }.simultaneousGesture(TapGesture().onEnded{
                let encoder = JSONEncoder()
                if let encoded = try? encoder.encode(saveData) {
                    UserDefaults.standard.set(encoded, forKey: "saves")
                }
            })
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
