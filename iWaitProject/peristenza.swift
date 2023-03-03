//
//  peristenza.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 02/03/23.
//

import Foundation

struct Salvataggio: Codable{
    var modulo: [[Bool]]
    var score: [[Int]]
    var cacao : userData
}
struct userData: Codable{
    var name: String
    var language: Int
}
public var saveData: Salvataggio = 

public var userDat = userData(name: "", language: 0)
