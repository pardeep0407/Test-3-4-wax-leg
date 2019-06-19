//
//  GameScene.swift
//  Test34-S19
//
//  Created by MacStudent on 2019-06-19.
//  Copyright © 2019 rabbit. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var nextLevelButton:SKLabelNode!
    var leg=SKSpriteNode(imageNamed: "leg")
    var hair1=SKSpriteNode(imageNamed: "Hair1")
    var hair2=SKSpriteNode(imageNamed: "Hair2")
    var hair3=SKSpriteNode(imageNamed: "Hair3")
    var hair4=SKSpriteNode(imageNamed: "Hair4")
    
    
    
    override func didMove(to view: SKView) {
        print("This is level 1")
        self.nextLevelButton = self.childNode(withName: "nextLevelButton") as! SKLabelNode
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        
        let touchedNodes = self.nodes(at: location)
        for node in touchedNodes.reversed() {
            if node.name == "Hair1" {
                self.currentNode = node
                node.removeFromParent()
        }
        
        let location = touch!.location(in:self)
        let node = self.atPoint(location)
        
        
        
        
        // MARK: Switch Levels
        if (node.name == "nextLevelButton") {
            let scene = SKScene(fileNamed:"Level2")
            if (scene == nil) {
                print("Error loading level")
                return
            }
            else {
                scene!.scaleMode = .aspectFill
                view?.presentScene(scene!)
            }
        }
        
    }
}
}
