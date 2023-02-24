//
//  Quiz.swift
//  iWaitProject
//
//  Created by Francesco on 24/02/23.
//

import SwiftUI

var quiz: [Quiz] = load("quizData")
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
    //let decoder = JSONDecoder()
    var body: some View {
        VStack{
            Text(quiz[0].questions[quest].question)
            //Spacer()
            HStack{
                Button("indietro"){
                    print(quest)
                    if(quest != 0) {quest -= 1}
                    else {quest = quiz[0].module.questions}
                }
                Button("avanti"){
                    quest += 1
                }
            }
        }
            
    }

}
//
struct QuizView_Previews: PreviewProvider {
   static var previews: some View {
       QuizView()
    }
}
