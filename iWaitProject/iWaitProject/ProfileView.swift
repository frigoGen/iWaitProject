//
//  ProfileView.swift
//  iWaitProject
//
//  Created by Giuseppe Iodice on 22/02/23.
//

import SwiftUI

var width: CGFloat = 200
var height: CGFloat = 20
var color1 = Color(uiColor: UIColor(red: 0.93, green: 0.89, blue: 0.64, alpha: 1.00))
var color2 = Color(uiColor: UIColor(red: 0.95, green: 0.78, blue: 0.51, alpha: 1.00))
var color3 = Color(uiColor: UIColor(red: 0.64, green: 0.93, blue: 0.78, alpha: 1.00))

struct ProfileView: View {
    
    @State private var textfieldText = ""
    @State var selectedLan: Language
    @State var percent1: CGFloat
    @State var percent2: CGFloat
    enum Language: String, CaseIterable, Identifiable {
        case ita, bra, eng
        var id: Self { self }
    }
    
    @State private var progress: CGFloat = 0.0
    var body: some View {
        let multiplier = width/100

                VStack{
                    Picker("Seleziona Lingua",selection: $selectedLan) {
                        HStack{
                            Text("  English ")
                            Image("eng")}.tag(Language.eng)
                        HStack{
                            Text("  Italiano ")
                            Image("ita")}.tag(Language.ita)
                        HStack{
                            Text("  Português ")
                            Image("bra")}.tag(Language.bra)
                    }
                
                    ZStack{
                        Spacer()
                        Image("profile2")
                        
                        VStack(spacing:5) {
                            ZStack{
                                //Image("rekkit")
                                Text(saveData.cacao.name)
                                .font(.title)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .padding(.top, 40.0)
                        }
                                                    
                                                if(selectedLan == .eng){
                                                    Text("Theory")
                                                        .font(.title)
                                                        .fontWeight(.bold)
                                                        .padding()
                                                }
                                                else{
                                                    Text("Teoria")
                                                        .font(.title)
                                                        .fontWeight(.bold)
                                                        .padding()
                                                }
                                                ZStack (alignment: .leading)
                                                {
                                                    RoundedRectangle(cornerRadius: height, style: .continuous)
                                                        .frame(width: width, height: height)
                                                        .foregroundColor(Color.black.opacity(0.1))
                                                    RoundedRectangle(cornerRadius: height, style: .continuous)
                                                        .frame(width: percent1 * multiplier, height: height)
                                                        .background(
                                                            LinearGradient(gradient: Gradient(colors: [color1,color2,color3]),
                                                                           startPoint: .leading, endPoint: .trailing)
                                                            .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                                                        )
                                                        .foregroundColor(.clear)
                            
                                                }
                                                Text("Quiz")
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .padding()
                                                ZStack (alignment: .leading)
                                                {
                                                    RoundedRectangle(cornerRadius: height, style: .continuous)
                                                        .frame(width: width, height: height)
                                                        .foregroundColor(Color.black.opacity(0.1))
                                                    RoundedRectangle(cornerRadius: height, style: .continuous)
                                                        .frame(width: percent2 * multiplier, height: height)
                                                        .background(
                                                            LinearGradient(gradient: Gradient(colors: [color1,color2,color3]),
                                                                           startPoint: .leading, endPoint: .trailing)
                                                            .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                                                        )
                                                    .foregroundColor(.clear)}
                                                //Spacer()
                                                NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true))
                                                {
                                                    ZStack{
                                                        Text("Salva")
                                                            .font(.headline)
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color.black)
                                                            
                                                        Image("GETREKT")
                                                            
                                                    }.padding(.top,50)
                                                    
                                                }.simultaneousGesture(TapGesture().onEnded {
                                                    if(selectedLan == .bra){saveData.cacao.language = 2}
                                                    else if(selectedLan == .eng){saveData.cacao.language = 0}
                                                    else if (selectedLan == .ita){saveData.cacao.language = 1}
                                                    let encoder = JSONEncoder()
                                                    if let encoded = try? encoder.encode(saveData) {
                                                        UserDefaults.standard.set(encoded, forKey: "saves")
                                                    }
                                                    print(saveData.cacao.language)
                                                    card = load(CardArray[saveData.cacao.language])
                                                })
                                        
                                            }
                        
                    }
                   Spacer()
                }
                //
            }
    }

    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView(selectedLan: .ita, percent1: CGFloat(10), percent2: CGFloat(10))
            
        }
    }
