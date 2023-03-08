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
        case ita, bra, eng, nul
        var id: Self { self }
    }
    
    @State private var progress: CGFloat = 0.0
    var body: some View {
        let multiplier = width/100

            
            
            
           // GeometryReader{ geometry in
                VStack{
                    Picker("Seleziona Lingua",selection: $selectedLan) {
                        Image("ita").tag(Language.ita)
                        Image("bra").tag(Language.bra)
                        Image("eng").tag(Language.eng)
                    }
                
                    ZStack{
                        Spacer()
                        Image("profile2")
                        
                                            VStack(spacing:5) {
                                                //Image("a caso")
                                                Text(saveData.cacao.name)
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .padding()
                                                Text("Teoria")
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .padding()
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
                                                /*Text("Game")
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .padding()
                                                ZStack (alignment: .leading)
                                                {
                                                    RoundedRectangle(cornerRadius: height, style: .continuous)
                                                        .frame(width: width, height: height)
                                                        .foregroundColor(Color.black.opacity(0.1))
                                                    RoundedRectangle(cornerRadius: height, style: .continuous)
                                                        .frame(width: percent * multiplier, height: height)
                                                        .background(
                                                            LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
                                                                           startPoint: .leading, endPoint: .trailing)
                                                            .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                                                        )
                                                    .foregroundColor(.clear)}*/
                                            }

                        
                        //   Image("back")
                        // .padding(.leading, -150.0)
                        //ZStack{
                        
                       
                        /*TextField("Name" , text: $textfieldText)
                        
                            .padding(.top, 450.0)
                            .padding(.horizontal, 90.0)
                            .foregroundColor(.black)*/
                        
                        
                       // Button("Save")
                        
                       // {
                        //    if !textfieldText.isEmpty
                          //  {
                         //       print("Text: \(textfieldText)")
                          //  }
                            //Button (action: {
                            // Qui puoi aggiungere il codice per cambiare la lingua dell'applicazione
                            // })
                            // {
                            //  Text("Cambia lingua")
                            
                      //  }
                      //  .padding(.bottom, 100.0)
                      //  .padding(.horizontal, 70.0)
                        
                    }
                    //.frame(width: 303, height: 404)
                   Spacer()
                }
                Spacer()
            }

        
    }
//}

    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView(selectedLan: .ita, percent1: CGFloat(10), percent2: CGFloat(10))
            
        }
    }
