//
//  ViewController.swift
//  Great Number Game
//
//  Created by R on 01/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let randomNum = Int.random(in: 1...100)


    @IBOutlet weak var userguesslabl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkuserguessbutton(_ sender: UIButton) {

          check()
        
    }
    
    func check(){
        var title = ""
        var massege = ""
        var color = UIColor.white
        let num = Int(userguesslabl.text!)
        if num != nil {
            let guess = Int(num!)
            switch guess {
            case _ where guess == randomNum :
                title = "Corrict"
                massege = "\(guess) was correct!!"
                color = .green
            case _ where guess > randomNum :
                title = "InCorrict"
                massege = "\(guess) was to High!!"
                color = .red
            case _ where guess < randomNum :
                title = "InCorrict"
                massege = "\(guess) was to Low!!"
                color = .red
            default:
                 title = "something wrong"
                massege = "something wrong"
                 color = .white
            }
        }else{
            title = "Errorr"
            massege = "write anumber"
        }
        myAlert(title: title,massege: massege, color: color)


    }
    
    func myAlert(title:String,massege:String,color:UIColor){
        let alert = UIAlertController(title: title, message: massege, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = color
        self.present(alert, animated: true, completion: nil)
    }
    
}

