//
//  ViewController.swift
//  Emoji Dictionary 2
//
//  Created by John Campbell on 03/09/2017.
//  Copyright © 2017 John Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArry()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as!  Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😂"
        emoji1.birthYear = 2017
        emoji1.category = "Emoji Face"
        emoji1.definition = "Crying laughter"
        
            let emoji2 = Emoji()
            emoji2.stringEmoji = "🤠"
            emoji2.birthYear = 2017
            emoji2.category = "Emoji Face"
            emoji2.definition = "Cowboy"
        
                let emoji3 = Emoji()
                emoji3.stringEmoji = "😎"
                emoji3.birthYear = 2017
                emoji3.category = "Emoji Face"
                emoji3.definition = "Cool dude wearing sunglasses"
        
                    let emoji4 = Emoji()
                    emoji4.stringEmoji = "💩"
                    emoji4.birthYear = 2017
                    emoji4.category = "Poo Emoji"
                    emoji4.definition = "Smelly Poo Face"
        
                        let emoji5 = Emoji()
                        emoji5.stringEmoji = "🤑"
                        emoji5.birthYear = 2017
                        emoji5.category = "Emoji Face"
                        emoji5.definition = "Money Tongue Face"
        
                            let emoji6 = Emoji()
                            emoji6.stringEmoji = "🤡"
                            emoji6.birthYear = 2017
                            emoji6.category = "Emoji Face"
                            emoji6.definition = "Clown Face"
                            
                            return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
                            
                        }
                        
}
