//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Mac on 26/03/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallIndex : Int = 0
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ballFuncation()
    }

    @IBAction func askClick(_ sender: Any) {
        
       ballFuncation()
        
    }
    func ballFuncation() {
        randomBallIndex = Int.random(in: 0 ... 4)
        
        imgView.image = UIImage.init(named: ballArray[randomBallIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ballFuncation()
    }
}

