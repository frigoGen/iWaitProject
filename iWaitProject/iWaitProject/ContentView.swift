//
//  ContentView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 22/02/23.
//

import SwiftUI
import CoreData
import SpriteKit

//var loadedState:Salvataggio = Salvataggio(modulo: [[false]] score: [0], cacao: userData(name: "", language: -1))

struct ContentView: View {
    
    var body: some View {
       /* if let decodedData = UserDefaults.standard.object(forKey: "saves") as? Data {
            if let gaeState = try? JSONDecoder().decode(Salvataggio.self, from: decodedData) {
                //print(userDetails)
                loadedState = gaeState
            }}*/
        if(saveData.cacao.language != -1){
            HomeView()
            
        }
        else{
            ViewLanguages()
            
        }
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
