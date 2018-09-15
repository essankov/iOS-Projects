//
//  ViewController.swift
//  calculator
//
//  Created by Issa Alkhamees on 9/11/18.
//  Copyright © 2018 Essa Nabeel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    var inputNumber1 : Double?
    var inputNumber2 : Double?
    
    enum operation {
        case addition
        case subtraction
        case multiplication
        case division
    }
    
    var operationChosen : operation = operation.addition
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clear(_ sender: UIButton){
        inputNumber1 = 0
        inputNumber2 = 0
        inputText.text?.removeAll()
        answerLabel.text = "Answer"
    }
    
    @IBAction func add(_ sender: UIButton) {
        operationChosen = .addition
        storeInput(inputNumper: &inputNumber1)
    }
    
    @IBAction func subtract(_ sender: UIButton) {
        operationChosen = .subtraction
        storeInput(inputNumper: &inputNumber1)
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        operationChosen = .multiplication
        storeInput(inputNumper: &inputNumber1)
    }
    
    @IBAction func divide(_ sender: UIButton) {
        operationChosen = .division
        storeInput(inputNumper: &inputNumber1)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        storeInput(inputNumper: &inputNumber2)
        
        guard let input1 = inputNumber1 else {
            print("Invalid input Number")
            return
        }
        
        guard let input2 = inputNumber2 else {
            print("Invalid input Number")
            return
        }
        
        var answer : Double = 0
        switch operationChosen {
        case .addition:
            answer = input1 + input2
        case .subtraction:
            answer = input1 - input2
        case .multiplication:
            answer = input1 * input2
        case .division:
            answer = input1 / input2
        }
        
        answerLabel.text = String(answer)
    }
    
    func storeInput(inputNumper : inout Double?) {
        guard let inputtext = inputText.text else {
            print("Invalid input text")
            return
        }
        inputNumper = Double(inputtext)
        inputText.text?.removeAll()
        
    }

}

