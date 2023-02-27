//
//  ContentView.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 22/02/23.
//

import SwiftUI
import CoreData
import SpriteKit

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    var scene: SKScene {
        let scene = GameScene()
        scene.tex = 0
            scene.size = CGSize(width: 192, height: 192)
            scene.scaleMode = .fill
            return scene
        }
    var scene1: SKScene {
        let scene1 = GameScene()
        scene1.tex = 1
            scene1.size = CGSize(width: 192, height: 192)
            scene1.scaleMode = .fill
            return scene1
        }
   var scene2: SKScene {
        let scene2 = GameScene()
        scene2.tex = 2
            scene2.size = CGSize(width: 192, height: 192)
            scene2.scaleMode = .fill
            return scene2
        }
    var body: some View {
        NavigationView {
         
              
                ZStack{
                    Image("sfondo1")
                        .padding(.bottom, 13.0)
                      
                    ScrollView{
                        LazyVGrid(columns: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Columns@*/[GridItem(.fixed(200))]/*@END_MENU_TOKEN@*/) {
                            VStack{
                                Spacer(minLength: 235)
                                NavigationLink(destination: Buttons(tex: 0)){
                                    SpriteView(scene: self.scene, options: [.allowsTransparency])
                                        .frame(width: 300, height: 110)
                                        .ignoresSafeArea()
                                    
                                }
                                NavigationLink(destination: Buttons(tex: 1)){
                                    SpriteView(scene: self.scene1, options: [.allowsTransparency])
                                        .frame(width: 300, height: 110)
                                        .ignoresSafeArea()
                                    
                                }
                                NavigationLink(destination: Buttons(tex: 2)){
                                    SpriteView(scene: self.scene2, options: [.allowsTransparency])
                                        .frame(width: 300, height: 110)
                                        .ignoresSafeArea()
                                    
                                }
                            }
                            
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 100.0, height: 100.0)
                    .position(x:340,y: 40)
                    
                }
            
           // .background(Color(UIColor(red: 0.44, green: 0.09, blue: 0.13, alpha: 1.00)
                           //  ))
      
        }
   

        
    }
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}
private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
