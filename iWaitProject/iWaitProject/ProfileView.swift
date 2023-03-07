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
    var percent: CGFloat=20
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
    
            //   Image("back")
            // .padding(.leading, -150.0)
            // HStack{
            //   TextField(K, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            //Spacer()

//            ZStack {

//                    .shadow(radius: 5).overlay{
//                                        VStack {
//                                            Image("a caso")
//
//                                            Text("Teoria")
//                                                .font(.title)
//                                                .fontWeight(.bold)
//                                                .padding()
//                                            ZStack (alignment: .leading)
//                                            {
//                                                RoundedRectangle(cornerRadius: height, style: .continuous)
//                                                    .frame(width: width, height: height)
//                                                    .foregroundColor(Color.black.opacity(0.1))
//                                                RoundedRectangle(cornerRadius: height, style: .continuous)
//                                                    .frame(width: percent * multiplier, height: height)
//                                                    .background(
//                                                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
//                                                                       startPoint: .leading, endPoint: .trailing)
//                                                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
//                                                    )
//                                                    .foregroundColor(.clear)
//
//                                            }
//                                            Text("Quiz")
//                                                .font(.title)
//                                                .fontWeight(.bold)
//                                                .padding()
//                                            ZStack (alignment: .leading)
//                                            {
//                                                RoundedRectangle(cornerRadius: height, style: .continuous)
//                                                    .frame(width: width, height: height)
//                                                    .foregroundColor(Color.black.opacity(0.1))
//                                                RoundedRectangle(cornerRadius: height, style: .continuous)
//                                                    .frame(width: percent * multiplier, height: height)
//                                                    .background(
//                                                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
//                                                                       startPoint: .leading, endPoint: .trailing)
//                                                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
//                                                    )
//                                                .foregroundColor(.clear)}
//                                            Text("Game")
//                                                .font(.title)
//                                                .fontWeight(.bold)
//                                                .padding()
//                                            ZStack (alignment: .leading)
//                                            {
//                                                RoundedRectangle(cornerRadius: height, style: .continuous)
//                                                    .frame(width: width, height: height)
//                                                    .foregroundColor(Color.black.opacity(0.1))
//                                                RoundedRectangle(cornerRadius: height, style: .continuous)
//                                                    .frame(width: percent * multiplier, height: height)
//                                                    .background(
//                                                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
//                                                                       startPoint: .leading, endPoint: .trailing)
//                                                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
//                                                    )
//                                                .foregroundColor(.clear)}
//                                        }
//
//                    }
//                VStack {
//                    Image("a caso")
//
//                    Text("Teoria")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .padding()
//                    ZStack (alignment: .leading)
//                    {
//                        RoundedRectangle(cornerRadius: height, style: .continuous)
//                            .frame(width: width, height: height)
//                            .foregroundColor(Color.black.opacity(0.1))
//                        RoundedRectangle(cornerRadius: height, style: .continuous)
//                            .frame(width: percent * multiplier, height: height)
//                            .background(
//                                LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
//                                               startPoint: .leading, endPoint: .trailing)
//                                .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
//                            )
//                            .foregroundColor(.clear)
//
//                    }
//                    Text("Quiz")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .padding()
//                    ZStack (alignment: .leading)
//                    {
//                        RoundedRectangle(cornerRadius: height, style: .continuous)
//                            .frame(width: width, height: height)
//                            .foregroundColor(Color.black.opacity(0.1))
//                        RoundedRectangle(cornerRadius: height, style: .continuous)
//                            .frame(width: percent * multiplier, height: height)
//                            .background(
//                                LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
//                                               startPoint: .leading, endPoint: .trailing)
//                                .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
//                            )
//                        .foregroundColor(.clear)}
//                    Text("Game")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .padding()
//                    ZStack (alignment: .leading)
//                    {
//                        RoundedRectangle(cornerRadius: height, style: .continuous)
//                            .frame(width: width, height: height)
//                            .foregroundColor(Color.black.opacity(0.1))
//                        RoundedRectangle(cornerRadius: height, style: .continuous)
//                            .frame(width: percent * multiplier, height: height)
//                            .background(
//                                LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]),
//                                               startPoint: .leading, endPoint: .trailing)
//                                .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
//                            )
//                        .foregroundColor(.clear)}
//                }
//            }
//
//            .frame(width: 303, height: 404)
            
            
            
            GeometryReader{ geometry in
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

                        
                        //   Image("back")
                        // .padding(.leading, -150.0)
                        //ZStack{
                        
                       
                       // TextField("Name" , text: $textfieldText)
                        
                            //.padding(.bottom, 100.0)
                           // .padding(.horizontal, 70.0)
                            //.foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        
                        
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
                        
                    }//.frame(width: 303, height: 404)
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
