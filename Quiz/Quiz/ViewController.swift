//
//  ViewController.swift
//  Quiz
//
//  Created by Issa Alkhamees on 9/5/18.
//  Copyright © 2018 Essa Nabeel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Labels
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "Who is the best one in the world?",
        "What is the best team in Premier League?",
        "How is the best soccer player?",
        "taco 🌮 or pizza 🍕",
        "Mac or Windows"
    ]
    let answers: [String] = [
        "Issa 😎",
        "Arsenal F.C. ⚽️",
        "Thierry Henry ⚽️",
        "pizza 🍕",
        "Linux 🐧"
    ]
    var currentQuestionIndex: Int = 0
    
    //Buttons
    @IBAction func showNextQustion(_ sender: UIButton)
    {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton)
    {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

