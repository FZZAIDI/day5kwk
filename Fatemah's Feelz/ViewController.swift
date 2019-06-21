//
//  ViewController.swift
//  Fatemah's Feelz
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🥰": "feelz emoji", "🤪": "wild emoji", "😩": "sad emoji", "🤩": "star emoji"]

    @IBAction func showMessage(_ sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
    var emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0...2)]
 let alertController = UIAlertController(title: "today im feelin'🤔", message:emojiMessage, preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
      present(alertController, animated: true, completion: nil)
    }
    var  customMessages = [
        "feelz emoji": ["im feelin all the love today", "im all in my feelings","my code and I are finally in a goode place"],
        "wild emoji": ["im feelin WILD, when's the party?", "party in Miami at my place"],
        "sad emoji": ["im #struggling", "when your code just wont cooperate", "when you dont know the difference between func and var", "when the lunch isn't vegan or gluten free"],
        "star emoji": ["im feelin extra today","when your mom packs you snacks for kkw","when you can finally say you have learned how to code an app"] ]
        

    
}

