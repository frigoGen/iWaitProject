//
//  ProfileView.swift
//  iWaitProject
//
//  Created by Giuseppe Iodice on 22/02/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var textfieldText = ""
    var width: CGFloat=200
    var height: CGFloat=20
    var percent: CGFloat=60
    var color1 = Color(.green)
    var color2 = Color(.white)
    enum Language: String, CaseIterable, Identifiable {
        case ita, bra, eng
        var id: Self { self }
    }
    
    @State var selectedLan: Language = .ita
    @State private var progress: CGFloat = 0.0
    var body: some View {
        let multiplier = width/100
      /*  VStack{
            //   Image("back")
            // .padding(.leading, -150.0)
            // HStack{
            //   TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            //Spacer()
            Image("Badge")
                .padding()
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor(red: 0.78, green: 0.91, blue: 0.85, alpha: 1)))
                    .shadow(radius: 5)
                VStack {
                    Image("a caso")
                    
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
                            .frame(width: percent * multiplier, height: height)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
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
                            .frame(width: percent * multiplier, height: height)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
                                               startPoint: .leading, endPoint: .trailing)
                                .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                            )
                        .foregroundColor(.clear)}
                    Text("Game")
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
                        .foregroundColor(.clear)}
                }
            }
            
            .frame(width: 303, height: 404)
            
            
            */
            GeometryReader{ geometry in
                VStack{
                    Picker("Seleziona Lingua",selection: $selectedLan) {
                        Image("ita").tag(Language.ita)
                        Image("bra").tag(Language.bra)
                        Image("eng").tag(Language.eng)
                    }
                    Spacer()
                    ZStack{
                        Spacer()
                        Image("profileView")
                        //   Image("back")
                        // .padding(.leading, -150.0)
                        //ZStack{
                        
                        TextField("Name" , text: $textfieldText)
                            
                            .padding(.bottom, 100.0)
                            .padding(.horizontal, 70.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                           
                        
                        Button("Save")
                        
                        {
                            if !textfieldText.isEmpty
                            {
                                print("Text: \(textfieldText)")
                            }
                            //Button (action: {
                            // Qui puoi aggiungere il codice per cambiare la lingua dell'applicazione
                            // })
                            // {
                            //  Text("Cambia lingua")
                            
                        }
                        .padding(.bottom, 100.0)
                        .padding(.horizontal, 70.0)
                        
                    }
                    Spacer()
                }
                
            }
        }
    }
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
            
        }
    }
