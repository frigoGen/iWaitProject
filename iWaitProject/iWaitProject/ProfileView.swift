//
//  ProfileView.swift
//  iWaitProject
//
//  Created by Giuseppe Iodice on 22/02/23.
//

import SwiftUI

struct ProfileView: View {
    var width: CGFloat=200
    var height: CGFloat=20
    var percent: CGFloat=60
    var color1 = Color(.green)
    var color2 = Color(.white)
    @State private var progress: CGFloat = 0.0
    var body: some View {
        let multiplier = width/100
        VStack{
         //   Image("back")
               // .padding(.leading, -150.0)
           // HStack{
             //   TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
               //Spacer()
          //  }
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
        
                
                
                }
            }
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
            
        }
    }
}
