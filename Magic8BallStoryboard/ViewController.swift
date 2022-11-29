//
//  ViewController.swift
//  Magic8BallStoryboard
//
//  Created by Tom Stahl on 11/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        becomeFirstResponder()
    }
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if (motion == .motionShake){
            askQuestion()
        }
    }
    
    
    @IBAction func showMessage(sender: UIButton){
        askQuestion()
    }
    
    //make function that both actions can call
    func askQuestion() -> Void{
        //let alertController = UIAlertController(title: getResponse(), message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        //alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
        //present(alertController, animated: true, completion: nil)
        
        labelMain.alpha = 0;
        labelMain.text = getResponse();

        [UIView .animate(
            withDuration: 1.5,
            animations: {self.labelMain.alpha = 1;}
        )]
             
    }
    
    func getResponse() -> String{
        var responseArray = [
            "It is certain.",
            "It is decidedly so.",
            "Without a doubt.",
            "Yes definitely.",
            "You may rely on it.",
            "As I see it, yes.",
            "Most likely.",
            "Outlook good.",
            "Yes.",
            "Signs point to yes.",
            "Reply hazy, try again.",
            "Ask again later.",
            "Better not tell you now.",
            "Cannot predict now.",
            "Concentrate and ask again.",
            "Don't count on it.",
            "My reply is no.",
            "My sources say no.",
            "Outlook not so good.",
            "Very doubtful."
        ]
        responseArray.shuffle()
        let response = responseArray.shuffled()
        return response[0]
    }


}

