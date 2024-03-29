//
//  GameScene1.swift
//  iWaitProject
//
//  Created by Ferdinando Carbone on 22/02/23.
//

import SpriteKit
import SwiftUI

class GameScene: SKScene {
    var tex: Int?
    //var modulo = SKLabelNode(text: "asdfghj")
    var pis = SKSpriteNode()
    //let backG = SKSpriteNode(color: UIColor(red: 211, green: 237, blue: 243, alpha: 1), size: CGSize(width: 100,height: 100))
    override func didMove(to view: SKView) {
        /*let mod1 = SKTexture(imageNamed:"MOD1")
        let mod2 = SKTexture(imageNamed:"MOD2")
        let mod3 = SKTexture(imageNamed:"MOD3")*/
        let modTex: [SKTexture] = [SKTexture(imageNamed:"Group"), SKTexture(imageNamed:"Group"), SKTexture(imageNamed:"Group")]
        pis.size = CGSize(width: 190, height: 190)
        pis.name = "pis"
        pis.isUserInteractionEnabled = false
        pis.texture = modTex[tex ?? 0]
        pis.position = CGPoint(x: frame.width/2, y: frame.width/2)
        pis.zPosition = 0
       /* modulo.position = pis.position
        //adjustLabelFontSizeToFitRect(labelNode: modulo,rect: pis)
        modulo.zPosition = 1
        modulo.fontColor = .black
        modulo.fontSize = CGFloat(15)
        modulo.fontName = "Arial"*/
       //self.backgroundColor = UIColor(red: 0.83, green: 0.93, blue: 0.95, alpha: 1.00)
        self.backgroundColor = .clear
        
        addChild(pis)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        //addChild(modulo)
        }
        
   /* func adjustLabelFontSizeToFitRect(labelNode:SKLabelNode, rect:SKSpriteNode) {

    // Determine the font scaling factor that should let the label text fit in the given rectangle.
        let scalingFactor = min(rect.size.width / (labelNode.frame.width), rect.size.height / labelNode.frame.height)

    // Change the fontSize.
    labelNode.fontSize *= scalingFactor

    // Optionally move the SKLabelNode to the center of the rectangle.
        labelNode.position = CGPoint(x: rect.frame.midX, y: rect.frame.midY - labelNode.frame.height / 2.0)
    }*/
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else { return }
            _ = touch.location(in: self)
            /*if location == pis.position {
                print("GAy")
            }
            let box = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
            box.position = location
            box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
            addChild(box)*/
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
