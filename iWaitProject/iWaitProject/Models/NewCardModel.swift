//
//  NewCardModel.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 27/02/23.
//

import Foundation

public struct CardModelUp: Decodable {
    let first: [String]
    let module: module
    let Card: [Card]
}
struct Card: Decodable, Hashable, Identifiable{
    let id: Int
    let Text: String
    let Image: String
}
struct module: Decodable{
    let Number: Int
    let Text: String
}
