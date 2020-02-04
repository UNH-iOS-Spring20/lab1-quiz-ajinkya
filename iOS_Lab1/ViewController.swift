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
    
    @IBAction func showNextQuestion (_sender: UIButton) {
        currentQuestionIndex += 1;
        if (currentQuestionIndex == questions.count) {
            currentQuestionIndex = 0;
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer (_sender : UIButton) {
        answerLabel.text = answers[currentQuestionIndex]
    }
    
    let questions: [String] = [
        "What is 7+7",
        "What is capital of India?",
        "What is congac made of?"
    ]
     
    let answers : [String] = [
        "14",
        "New Delhi",
        "Grapes"
    ]
    
    var currentQuestionIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        questionLabel.text = questions[currentQuestionIndex];
       
    }

}

