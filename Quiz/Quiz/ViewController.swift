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
    @IBOutlet var qustionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] =
    [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is congac made from?"
    ]
    
    let answers: [String] =
    [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQustionIndex: Int = 0
    
    //Buttons
    @IBAction func showNextQustion(_ sender: UIButton)
    {
        currentQustionIndex += 1
        if currentQustionIndex == questions.count
        {
            currentQustionIndex = 0
        }
        
        let question: String = questions[currentQustionIndex]
        qustionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton)
    {
        let answer: String = answers[currentQustionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qustionLabel.text = questions[currentQustionIndex]
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

