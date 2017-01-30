//
//  ViewController.swift
//  QuizWorld
//
//  Created by Håkon Bogen on 28/01/17.
//  Copyright © 2017 beiningbogen.no. All rights reserved.
//

import UIKit
import QuizWorldAPI
import Prelude
import ReactiveSwift
import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet public weak var questionText: UILabel!
    
    fileprivate let viewModel: QuestionViewModelType = QuestionViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.rac.text = self.viewModel.outputs.questionText
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

