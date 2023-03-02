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
        VStack(alignment: .center){
            Image("clochepallini")
                .resizable()
                .frame(width: 288,height: 227)
                .padding(.top, 50)
                
            
            TextField(
                    "  Nickname",
                    text: $username
                )
            .frame(width: 301,height: 65)
            .background(Color.yellow)
            .cornerRadius(20)
            .padding(.top, 18)
            .padding(.bottom, 18)
            
    
            VStack(alignment: .center){
                
                HStack{
                    Rectangle()
                        .frame(width: 52,height: 34)
                        .cornerRadius(10)
                        .foregroundColor(Color.gray)
                       
                    Rectangle()
                        .frame(width: 52,height: 34)
                        .cornerRadius(10)
                        .foregroundColor(Color.gray)
                        .padding(.horizontal, 30)
                    Rectangle()
                        .frame(width: 52,height: 34)
                        .cornerRadius(10)
                        .foregroundColor(Color.gray)
                    
                }
                HStack{
                    
                    Spacer()
                    
                    Image("manopiatto")
                        .resizable()
                        .frame(width: 400,height: 227)
                        .padding(.top, 18)
                }
            }
            Spacer()
            ZStack{
                
                Rectangle()
                    .cornerRadius(10)
                    .frame(width: 288,height: 62)
                    .foregroundColor(Color.red)
                
                Text("inizia")
                    .foregroundColor(Color.white)
            
            }
            
            Spacer()
        }
    }
}

struct ViewLanguages_Previews: PreviewProvider {
    static var previews: some View {
        ViewLanguages()
    }
}
