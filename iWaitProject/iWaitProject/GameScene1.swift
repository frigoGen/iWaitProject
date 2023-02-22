//
//  GameScene1.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 22/02/23.
//

import SpriteKit
//import SwiftUI

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let textures: [SKTexture] = [SKTexture(imageNamed: "MOD1"),SKTexture(imageNamed:) ,SKTexture(imageNamed: <#T##String#>))]
            let pis = SKNode()
        pis.texture = textures[0]
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        }

        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else { return }
            let location = touch.location(in: self)
            let box = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
            box.position = location
            box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
            addChild(box)
        }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
