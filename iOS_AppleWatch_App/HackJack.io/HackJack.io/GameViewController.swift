//
//  GameViewController.swift
//  HackJack.io
//
//  Created by Apple on 2/20/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit
import WatchConnectivity

class GameViewController: UIViewController {
    
    var trueCount = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        trueCount = 0;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plusOne(){
        trueCount++
        sendToWatchBtnTapped()
    }
    
    @IBAction func minusOne(){
        trueCount--
        sendToWatchBtnTapped()
    }
    
    @IBAction func stay(){
        sendToWatchBtnTapped()
    }
    
    func getMessage() -> String{
        switch trueCount {
        case -5:
            return "We aren't eating til five bro"
        case -4:
            return "BRO IT'S LIKE MINUS FOUR HERE UGH"
        case -3:
            return "I'm not three anymore cmonnnn"
        case -2:
            return "Lol yeah, she told me not to"
        case -1:
            return "They're down one dancer tonight"
        case 0:
            return "He's no hero"
        case 1:
            return "Tim Tebow is number one, I'm tellin u"
        case 2:
            return "These lines are way too long"
        case 3:
            return "Threes company is def the best show"
        case 4:
            return "For my moneys worth, charmander is the best pokemon"
        case 5:
            return "Five star Michillen awards are good enough for me"
        default:
            return "idk bro, I'm lost"
        }
    }
    
    func sendToWatchBtnTapped() {
        
        let msg = getMessage()
        // check the reachablity
        if !WCSession.defaultSession().reachable {
            
            let alert = UIAlertController(
                title: "Failed to send",
                message: "Apple Watch is not reachable.",
                preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.Cancel,
                handler: nil)
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
            
            return
        }
        
        let message = ["request": "showAlert","alrt": msg]
        WCSession.defaultSession().sendMessage(
            message, replyHandler: { (replyMessage) -> Void in
                //
            }) { (error) -> Void in
                print(error)
        }
    }
}
