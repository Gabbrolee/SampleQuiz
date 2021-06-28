//
//  HomeViewController.swift
//  SampleQuiz
//
//  Created by User on 26/06/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var AnswerLabel:
        UILabel!
    let questions: [String] = [

            "What is 7+7?",

            "What is the capital of Vermont?",

            "What is cognac made from?",

            "What is the name of the Stack that makes use of class 5",

            "How many Decadevs are in the iOS Stack?",

            "How many male Decadevs are there in the iOS Stack?",

            "How many female Decadevs are there in the iOS Stack?"

        ]
    let answers: [String] = [

         "14",

         "Montpelier",

         "Grapes",

         "iOS Stack",

         "9",

         "7",

         "2"

     ]
    var currentQuestionIndex: Int = 0
    override func viewDidLoad() {
        

        questionsLabel.text = questions [currentQuestionIndex]
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ShowNewQuestion(_ sender: Any) {
        
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        questionsLabel.text = questions[currentQuestionIndex]
        AnswerLabel.text = "???"
       
      
    }
    @IBAction func ShowAnswers(_ sender: UIButton) {
     print("button tap")
        AnswerLabel.text = answers[currentQuestionIndex]
     
    }
}

