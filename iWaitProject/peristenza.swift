//
//  peristenza.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 02/03/23.
//

import Foundation

public struct Salvataggio: Codable{
    var modulo: [[Bool]]
    var score: [Int]
    var cacao : userData
}
public struct userData: Codable{
    var name: String
    var language: Int
}
public var saveData: Salvataggio = Salvataggio(modulo: [[false,false,false],[false,false,false],[false,false,false]], score: [0,0,0], cacao: userData(name: "", language: -1))
/*
public var saveData: Salvataggio = 

public var userDat = userData(name: "", language: 0)
*/
