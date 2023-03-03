//
//  answerGuessView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 01/03/23.
//

import SwiftUI

struct resocontoView: View {
    var body: some View {
        TabView{
            
                ViewLanguages()
                ViewHello()
                ViewEnd()
            
        } .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct resocontoView_Previews: PreviewProvider {
    static var previews: some View {
        resocontoView()
    }
}
