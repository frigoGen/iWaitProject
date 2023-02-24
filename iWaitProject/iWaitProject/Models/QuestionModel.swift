//
//  QuestionModel.swift
//  iWaitProject
//
//  Created by Francesco on 24/02/23.
//

import Foundation

// MARK: - Quiz
struct Quiz: Codable {
    let module: Module
    let questions: [Question]
}

// MARK: - Module
struct Module: Codable {
    let number: Int
    let name: String
    let questions: Int
}

// MARK: - Question
struct Question: Codable {
    let number: Int
    let question: String
    let answers: [String]
    let correctAnswer: Int
}
