//
//  ViewController.swift
//  Menu bars
//
//  Created by Masein Mody on 3/11/18.
//  Copyright © 2018 Masein Mody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time : Int = 210

    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func toPlay(_ sender: Any) {
        if(!timer.isValid){
            timer =  Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreasetime), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func decrease10(_ sender: Any) {
        if time > 10{
            time -= 10
            timerLabel.text = String(time)
        }
    }
    
    /// increases the timer by increasing the global time variable and changng the lable's text
    ///
    /// - Parameter sender: clicking on the +10 button
    @IBAction func increase10(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }
    @IBAction func toPause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func toReset(_ sender: Any) {
        time = 210
        timerLabel.text = String(210)
    }
    
    @objc func decreasetime(){
        if time == 0 {
            timer.invalidate()
        }else{
            time -= 1
            timerLabel.text = String(time)
        }
    }

    override func viewDidLoad() {
        timerLabel.text = String(time)
        super.viewDidLoad()
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

