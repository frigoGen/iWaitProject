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
                ViewHello()
                ViewEnd()
            
        } .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .background(Color(uiColor: UIColor(red: 0.93, green: 0.89, blue: 0.64, alpha: 0.85)))
    }
}

struct resocontoView_Previews: PreviewProvider {
    static var previews: some View {
        resocontoView()
    }
}
