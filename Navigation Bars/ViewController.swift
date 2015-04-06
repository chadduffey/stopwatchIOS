//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Chad Duffey on 6/04/2015.
//  Copyright (c) 2015 Chad Duffey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var pausePressed: UIBarButtonItem!
    @IBOutlet weak var timerOutput: UILabel!
    var timer = NSTimer()
    var count = 0
    
    func result() {
        count++
        timerOutput.text = "\(count)"
    }
    
    @IBAction func paused(sender: AnyObject) {
            timer.invalidate()
    }
    
    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
        count = 0
        timerOutput.text = "\(count)"
    }
    @IBAction func play(sender: AnyObject) {
             timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

