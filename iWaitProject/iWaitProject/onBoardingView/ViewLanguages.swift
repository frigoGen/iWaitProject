//
//  ViewLanguages.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 02/03/23.
//

import SwiftUI

struct ViewLanguages: View {
    @State private var username: String = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color(uiColor: UIColor(red: 0.93, green: 0.89, blue: 0.64, alpha: 0.85))
            VStack(alignment: .center){
                Image("clochepallini")
                    .resizable()
                    .frame(width: 288,height: 227)
                    .padding(.top, 50)
                
                
                TextField(
                    "Nickname/Nome",
                    text: $username
                )
                .frame(width: 301,height: 65)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding(.top, 18)
                .padding(.bottom, 18)
                .multilineTextAlignment(.center)
                
                VStack(alignment: .center){
                    HStack{
                        NavigationLink(destination:resocontoView().navigationBarBackButtonHidden(true)){
                            ZStack{
                                Rectangle()
                                    .frame(width: 52,height: 34)
                                    .cornerRadius(10)
                                    .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                Image("bra")}
                        }.simultaneousGesture(TapGesture().onEnded{
                            saveData.cacao.language = 2
                            saveData.cacao.name = username
                            let encoder = JSONEncoder()
                            if let encoded = try? encoder.encode(saveData) {
                                UserDefaults.standard.set(encoded, forKey: "saves")
                            }})
                        NavigationLink(destination:resocontoView().navigationBarBackButtonHidden(true)){
                            ZStack{
                                Rectangle()
                                    .frame(width: 52,height: 34)
                                    .cornerRadius(10)
                                    .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                    .padding(.horizontal, 30)
                                Image("ita")
                            }
                        }.simultaneousGesture(TapGesture().onEnded{
                            saveData.cacao.language = 1
                            saveData.cacao.name = username
                            let encoder = JSONEncoder()
                            if let encoded = try? encoder.encode(saveData) {
                                UserDefaults.standard.set(encoded, forKey: "saves")
                            }})
                        NavigationLink(destination: resocontoView().navigationBarBackButtonHidden(true)){
                            ZStack{
                                Rectangle()
                                    .frame(width: 52,height: 34)
                                    .cornerRadius(10)
                                    .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                Image("eng")
                                
                                
                            }
                        }.simultaneousGesture(TapGesture().onEnded{
                            saveData.cacao.language = 0
                            saveData.cacao.name = username
                            print("Lan: \(saveData.cacao.language) Name: \(saveData.cacao.name)")
                            let encoder = JSONEncoder()
                            if let encoded = try? encoder.encode(saveData) {
                                UserDefaults.standard.set(encoded, forKey: "saves")
                            }})
                    }
                    HStack{
                        
                        Spacer()
                        
                        Image("manopiatto")
                            .resizable()
                            .frame(width: 400,height: 227)
                            .padding([.top, .leading], 20.0)
                    }
                }
                Spacer()
                
            }
        }.ignoresSafeArea()
        
    }
            
    }
}

struct ViewLanguages_Previews: PreviewProvider {
    static var previews: some View {
        ViewLanguages()
    }
}
