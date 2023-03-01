//
//  Quiz.swift
//  iWaitProject
//
//  Created by Francesco on 24/02/23.
//

import SwiftUI


var quest:Int = 0


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json")
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

struct QuizView: View {
    @State var quiz: [Quiz] = load("QuizData[PT]")
    var tex: Int
        //number of question
        @State var i : Int = 1
    @State var isWrong: Int = 0
        //var for the score
        @State var score = 0
        var body: some View {
            VStack(alignment: .center, spacing: 20){
               /* if(self.i == -1){
                    Button(action: {self.buttonAction(n: self.i)}, label: {
                        ZStack{
                            Image("Question")
                            Text("Sono Pronto")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.black)
                        }
                    })
                }*/
                //if i < of questions --> play question
              if(self.i < quiz[tex].module.questions && self.i >= 0){
                    Text("\(i+1)/\(quiz[tex].module.questions)")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color.black)
                    //image of the question
                    ZStack{
                        HStack{
                            Spacer()
                            Text("\(self.score)")
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        }
                        Image("card1")
                            .resizable()
                           // .scaledToFit()
                            .padding(.all)
                    }
                    //text of the question
                    Text(quiz[tex].questions[i].question)
                      .font(.custom("SFPro-Medium",size: 17))
                      .bold()
                        .foregroundColor(Color.black)
//spazio tra loro:14 tutoil blocco: t:325 l:173 r:39 s:39
                    
                    //answer 0
                    Button(action:{
                        self.buttonAction(n: 0)
                    },label: {
                        ZStack{
                            Image("Question")
                            Text(quiz[tex].questions[i].answers[0])
                                .font(.custom("SFPro-Medium",size: 17))
                                .bold()
                                .padding(.bottom)
                                .frame(width: 308,height: 76)
                                .foregroundColor(Color.black)
                        }
                    })
                    
                    
                    //answer 1
                    Button(action:{
                        self.buttonAction(n: 1)
                    },label: {
                        ZStack{
                            Image("Question")
                            Text(quiz[tex].questions[i].answers[1])
                                .font(.custom("SFPro-Medium",size: 17))                                .bold()
                                .padding(.bottom)
                                .frame(width: 308,height: 76)
                                .foregroundColor(Color.black)
                        }
                    })
                    
                    if(quiz[tex].questions[i].answers.count <= 4){
                        //answer 2
                        Button(action:{
                            self.buttonAction(n: 2)
                        },label: {
                            ZStack{
                                Image("Question")
                                Text(quiz[tex].questions[i].answers[2])
                                    .font(.custom("SFPro-Medium",size: 17))                                    .bold()
                                    .padding(.bottom)
                                    .frame(width: 308,height: 76)
                                    .foregroundColor(Color.black)

                            }
                            })
                    }
                    if(quiz[tex].questions[i].answers.count == 4 ){
                        //answer 3
                        Button(action:{
                            self.buttonAction(n: 3)
                        },label: {
                            ZStack{
                                Image("Question")
                                Text(quiz[tex].questions[i].answers[3])
                                    .font(.custom("SFPro-Medium",size: 17))                                    .bold()
                                    .padding(.bottom)
                                    .frame(width: 308,height: 76)
                                    .foregroundColor(Color.black)
                                
                            }
                        })
                    }
                }
                    
                else{
                    //FinalView(score : self.score)
                    //NUOVA VIEW con resoconto
                    ContentView()
                    
                }
                
                
            }
        }
        
        
        //action of the buttons
        //n = answer [0,1,2,3]
        func buttonAction( n : Int){
            //if answer is correct increment score
            if(n == -1){
                print("IM READY")
            }
            else if(quiz[tex].questions[i].correct_answer == n){
                
                self.score = self.score + 1
            }
            //GO TO NEXT QUESTION
            self.i = self.i + 1
            print("\(i)")
        }
        
        
    }

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(tex: 0)
    }
}
