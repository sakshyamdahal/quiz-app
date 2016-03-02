//
//  ViewController.swift
//  Quiz
//
//  Created by Sakshyam Dahal on 3/1/16.
//  Copyright © 2016 Sakshyam Dahal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions: [String] = [ "what is 2*2",
                                "what is capital city of Nepal",
                                "When was claflin founded" ]
    let answers: [String] = [ "4",
                              "kathmandu",
                               "1869" ]
    
    var currentQuestionIndex = 0
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        
        currentQuestionIndex += 1

        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

}

