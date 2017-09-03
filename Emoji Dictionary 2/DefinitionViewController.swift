//
//  DefinitionViewController.swift
//  Emoji Dictionary 2
//
//  Created by John Campbell on 03/09/2017.
//  Copyright © 2017 John Campbell. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    emojiLabel.text = emoji
        
        if emoji == "😂" {
            definitionLabel.text = "Crying Laughter!"
        
        }
        
        if emoji == "💩" {
            definitionLabel.text = "Smelly Poo Face"
            
        }
        
        if emoji == "🤑" {
            definitionLabel.text = "Money Tongue Face"
            
        }
        
        if emoji == "😎" {
            definitionLabel.text = "Cool dude wearing sunglasses"
            
        }
        
        if emoji == "🤡" {
            definitionLabel.text = "Clown Face"
            
        }
        
        if emoji == "🤠" {
            definitionLabel.text = "Cowboy"
            
        }
        
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
