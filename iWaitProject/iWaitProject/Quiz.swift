//
//  Quiz.swift
//  iWaitProject
//
//  Created by Francesco on 24/02/23.
//

import SwiftUI
let quizData : [String] = ["QuizData[EN]","QuizData[IT]","QuizData[PT]"]
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
    //aggiunto per contare le immagini nei Quiz
    @State var imageQuiz: [[String]] = [["t1","t7","t11","t10","t11","t2","t5","t3","t3","t10","t1","t1"],["Image","Image","Image","Image","Image","Image","Image","Image","Image","Image","Image","Image"],["t12","t12","2","5","9","9","1","2","1","t12","t12","t12"]]
    //------------
    @State var blocker: Int = -1
    var tex: Int
    @State var zest = 0
        //number of question
    @State var i : Int = 1
    @State var isWrong: [Int] = [-1,-1,-1,-1]
        //var for the score
    @State var score = 0
    @State var quiz: [Quiz] = [Quiz(module: Module(number: 0, name: "Test", questions: 12), questions: [Question(number: 0, question: "?", answers: ["!","!"], correct_answer: 1)]),Quiz(module: Module(number: 0, name: "Test", questions: 12), questions: [Question(number: 0, question: "?", answers: ["!","!"], correct_answer: 1)]),Quiz(module: Module(number: 0, name: "Test", questions: 12), questions: [Question(number: 0, question: "?", answers: ["!","!"], correct_answer: 1)])]
    var body: some View {
        ZStack{
            Color(uiColor: colors[tex])
                .edgesIgnoringSafeArea(.all)
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
                if(self.i <= quiz[tex].module.questions && self.i >= 0){
                    Text("\(i)/\(quiz[tex].module.questions)")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color.black)
                    //image of the question

                  ZStack{
                     /* HStack{
                          Spacer()
                          Text("\(self.score)")
                              .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                      }*/
                      //-------Image view random
                      Image(imageQuiz[tex][zest] ) // mostra un'immagine casuale, o un'immagine predefinita se non ci sono elementi nell'array
                          .resizable()
                          .scaledToFit()
                          .padding()

                            }
                    //text of the question
                    
                    //spazio tra loro:14 tutoil blocco: t:325 l:173 r:39 s:39
                    VStack{
                        Text(quiz[tex].questions[i-1].question)
                            .font(.custom("SFPro-Medium",size: 17))
                            .frame(width: 308,height: 40)
                            .padding(.top)
                            .bold()
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                        //answer 0
                        Button(action:{
                            if(blocker == -1){self.buttonAction(n: 1)}
                        },label: {
                            ZStack{
                                if (isWrong[0] == 1 && blocker == 0 && (!isWrong.contains(1) || !isWrong.contains(0))) {
                                    
                                    Image("WrongQuestion")}
                                else if (isWrong[0] == 0 && blocker == 1 && (!isWrong.contains(1) || !isWrong.contains(0))) {Image("RightQuestion")}
                                else{ Image("Question") }
                                Text(quiz[tex].questions[i-1].answers[0])
                                    .font(.custom("SFPro-Medium",size: 17))
                                    .bold()
                                    .padding(.bottom)
                                    .frame(width: 308,height: 76)
                                    .foregroundColor(Color.black)
                            }
                        })
                        
                        
                        //answer 1
                        Button(action:{
                            if(blocker == -1){self.buttonAction(n: 2)}
                        },label: {
                            ZStack{
                                if (isWrong[1] == 1 && blocker == 0 && (!isWrong.contains(1) || !isWrong.contains(0))) {Image("WrongQuestion")}
                                else if (isWrong[1] == 0 && blocker == 1 && (!isWrong.contains(1) || !isWrong.contains(0))) {Image("RightQuestion")}
                                else{ Image("Question") }
                                Text(quiz[tex].questions[i-1].answers[1])
                                    .font(.custom("SFPro-Medium",size: 17))                                .bold()
                                    .padding(.bottom)
                                    .frame(width: 308,height: 76)
                                    .foregroundColor(Color.black)
                            }
                        })
                        
                        if(quiz[tex].questions[i-1].answers.count <= 4 && quiz[tex].questions[i-1].answers.count != 2){
                            //answer 2
                            Button(action:{
                                if(blocker == -1){self.buttonAction(n: 3)}
                            },label: {
                                ZStack{
                                    if (isWrong[2] == 1 && blocker == 0 && (!isWrong.contains(1) || !isWrong.contains(0))) {Image("WrongQuestion")}
                                    else if (isWrong[2] == 0 && blocker == 1 && (!isWrong.contains(1) || !isWrong.contains(0))) {Image("RightQuestion")}
                                    else{ Image("Question") }
                                    Text(quiz[tex].questions[i-1].answers[2])
                                        .font(.custom("SFPro-Medium",size: 17))                                    .bold()
                                        .padding(.bottom)
                                        .frame(width: 308,height: 76)
                                        .foregroundColor(Color.black)
                                    
                                }
                            })
                        }
                        if(quiz[tex].questions[i-1].answers.count == 4 ){
                            //answer 3
                            Button(action:{
                                if(blocker == -1){self.buttonAction(n: 4)}
                            },label: {
                                ZStack{
                                    if (isWrong[3] == 1 && blocker == 0 && (!isWrong.contains(1) || !isWrong.contains(0))) {Image("WrongQuestion")}
                                    else if (isWrong[3] == 0 && blocker == 1 && (!isWrong.contains(1) || !isWrong.contains(0))) {Image("RightQuestion")}
                                    else{ Image("Question") }
                                    Text(quiz[tex].questions[i-1].answers[3])
                                        .font(.custom("SFPro-Medium",size: 17))                                    .bold()
                                        .padding(.bottom)
                                        .frame(width: 308,height: 76)
                                        .foregroundColor(Color.black)
                                    
                                }
                            })
                        }
                        Spacer()
                        if(isWrong.contains(0) || isWrong.contains(1)) { Button {
                            if(self.i<=11){
                                if(self.i == 11){
                                    self.i += 1
                                }
                                
                                buttonAction(n: -1)}
                            else{
                                self.i += 1
                                buttonAction(n: -1)
                                
                            }
                        } label: {
                            if(i<=11){Text("Next")}
                            else{Text("End Quiz")}
                        }
                        }
                    }
                    .frame(width: 312,height: 346)
                    .padding(.bottom,40)
                    
                    
                }
                
                else{
                    //FinalView(score : self.score)
                    //NUOVA VIEW con resoconto
                    pulsantinoView(tex: tex, score: score).navigationBarBackButtonHidden(true)
                    
                }
                
                
            }
        }
        .onAppear{
            quiz = load(quizData[saveData.cacao.language])
        }
    }
        
        
        //action of the buttons
        //n = answer [0,1,2,3]
     func buttonAction( n : Int){
            //if answer is correct increment score
            if(n == -1){
                if(self.zest == 9){self.zest = 0}
                else {self.zest = self.zest + 1}
                
                isWrong = [-1,-1,-1,-1]
                if(self.i < 11){self.i = self.i + 1}
                else if (self.score >= 5){isUnlocked[tex][2] = true}
                blocker = -1
                print("IM READY")
            }
            else if(quiz[tex].questions[i-1].correct_answer == n){
                print(n)
                if(isWrong[n-1] == -1){self.score = self.score + 1}
                isWrong[n-1] = 0
                blocker = 1
            }
            else{
                print("IM")
                blocker = 0
                isWrong[n-1] = 1
                
            }
            //GO TO NEXT QUESTION
         

         if(self.i<12){print("i:\(i) n:\(n) correct: \(quiz[tex].questions[i-1].correct_answer) blocker:\(blocker)")}
         
        }
 
        
    }

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(tex: 0)
    }
}
