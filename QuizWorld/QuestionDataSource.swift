//
//  QuestionDataSource.swift
//  QuizWorld
//
//  Created by Håkon Bogen on 29/01/17.
//  Copyright © 2017 beiningbogen.no. All rights reserved.
//

import Foundation
import QuizWorldAPI

internal struct QuestionDataSource {
    
    fileprivate var questions: [Question]
    
    init(questions: [Question]) {
        
        self.questions = questions
        
    }
    
}
