//
//  HomeView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 01/03/23.
//

import SwiftUI
import SpriteKit

struct HomeView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.tex = 0
        //scene.modulo.text = card[scene.tex!].module.Text
            scene.size = CGSize(width: 192, height: 192)
            scene.scaleMode = .fill
            return scene
        }
    var scene1: SKScene {
        let scene1 = GameScene()
        scene1.tex = 1
        //scene1.modulo.text = card[scene1.tex!].module.Text
            scene1.size = CGSize(width: 192, height: 192)
            scene1.scaleMode = .fill
            return scene1
        }
   var scene2: SKScene {
        let scene2 = GameScene()
        scene2.tex = 2
       //scene2.modulo.text = card[scene2.tex!].module.Text
            scene2.size = CGSize(width: 192, height: 192)
            scene2.scaleMode = .fill
            return scene2
        }
    var body: some View {
        NavigationView {
            
            ZStack{
                
                Image("home")
                    .resizable()
                    .padding(.bottom)
                    .scaledToFill()
                
                /*Color(uiColor: UIColor(red: 0.98, green: 0.95, blue: 0.87, alpha: 1.00))*/
                
                ScrollView{
                    LazyVGrid(columns: [GridItem(.fixed(200))]) {
                        VStack{
                            Spacer(minLength: 235)
                            NavigationLink(destination: Buttons(tex: 0,mode: false)){
                                ZStack{
                                    SpriteView(scene: self.scene, options: [.allowsTransparency])
                                        .frame(width: 300, height: 110)
                                        .ignoresSafeArea()
                                    Text(card[0].module.Text)
                                        .fontWeight(.black)
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .bold()
                                }
                                
                            }
                            NavigationLink(destination: Buttons(tex: 1,mode: false)){
                                ZStack{
                                    SpriteView(scene: self.scene1, options: [.allowsTransparency])
                                        .frame(width: 300, height: 110)
                                        .ignoresSafeArea()
                                    Text(card[1].module.Text)
                                        .fontWeight(.black)
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .bold()
                                }
                                
                            }
                            NavigationLink(destination: Buttons(tex: 2,mode: false)){
                                ZStack{
                                    SpriteView(scene: self.scene2, options: [.allowsTransparency])
                                        .frame(width: 300, height: 110)
                                        .ignoresSafeArea()
                                    Text(card[2].module.Text)
                                        .fontWeight(.black)
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .bold()
                                    
                                    
                                }
                            }
                        }
                        
                    }
                }
                .padding(.all)
                VStack{
                    Spacer(minLength: 60)
                    
                    NavigationLink(destination: ProfileView()){
                        ZStack{
                            Image("bollapic")
                            Image("id")
                        }
                        
                    }
                    // NavigationLink(destination: Text("Toggle Music")){
                    //   Image("bollapic")
                    
                    //  }
                }
                .padding(.all)
                .frame(width: 100.0, height: 100.0)
                .position(x:340,y: 40)
                
            }
            
            // .background(Color(UIColor(red: 0.44, green: 0.09, blue: 0.13, alpha: 1.00)
            //  ))
            
        }
        //.foregroundColor(.black)
   

        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
