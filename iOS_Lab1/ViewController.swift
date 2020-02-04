//
//  ViewController.swift
//  iOS_Lab1
//
//  Created by Ajinkya Wani on 2/3/20.
//  Copyright © 2020 Ajinkya Wani. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    @IBAction var questionButton: UIButton!
    @IBAction var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        questionLabel.text = ""
    }

}

