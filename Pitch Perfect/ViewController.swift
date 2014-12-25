//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Alberto Benavides on 12/23/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        //Hide the stop button
        stopButton.hidden = true
        recordButton.enabled = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        stopButton.hidden = false
        recordingInProgress.hidden = false
        recordButton.enabled = false
        println("starting to record audio")
    }

    @IBAction func stopRecordingAudio(sender: UIButton) {
        recordingInProgress.hidden = true;
        stopButton.hidden = true
        recordButton.enabled = true
        println("Stopped recording audion")
    }
}

