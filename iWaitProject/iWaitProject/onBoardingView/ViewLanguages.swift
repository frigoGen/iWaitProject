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
                    Button{
                        
                    }label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 52,height: 34)
                                .cornerRadius(10)
                                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                            Image("bra")
                        }
                        }
                    Button{
                        
                    }label: {
                        ZStack{
                    
                            Rectangle()
                                .frame(width: 52,height: 34)
                                .cornerRadius(10)
                                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                .padding(.horizontal, 30)
                            Image("ita")
        
                        }
                        
                    }
                    Button{
                        
                    }label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 52,height: 34)
                                .cornerRadius(10)
                                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                            Image("eng")
                            
                                
                            
                        }
                    }
                    
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
                    .foregroundColor(Color(red: 0.82, green: 0.50, blue: 0.50))
                
                Text("inizia")
                    .foregroundColor(Color.white)
            
            }
            .padding(.bottom, 20)
            Spacer()
        }
    }
}

struct ViewLanguages_Previews: PreviewProvider {
    static var previews: some View {
        ViewLanguages()
    }
}
