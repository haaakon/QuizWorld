//
//  QuestionViewModel.swift
//  QuizWorld
//
//  Created by Håkon Bogen on 29/01/17.
//  Copyright © 2017 beiningbogen.no. All rights reserved.
//

import Foundation
import QuizWorldAPI
import Prelude
import ReactiveSwift
import ReactiveExtensions
import Result

public protocol QuestionViewModelInputs {
    
    func viewDidLoad()
    
    func answered(alternative: Alternative)
    
    /// Question that should be shown
    func configureWith(question: Question)
    
}

public protocol QuestionViewModelOutputs {
    
    
    var questionText: Signal<String, NoError> { get }
    
}

public protocol QuestionViewModelType {
    
    var inputs: QuestionViewModelInputs { get }
    var outputs: QuestionViewModelOutputs { get }
    
}

public final class QuestionViewModel: QuestionViewModelType, QuestionViewModelInputs, QuestionViewModelOutputs {
    
    public let questionText: Signal<String, NoError>
    
    /// Question that should be shown
    fileprivate let question = MutableProperty<Question?>(nil)
    
    public func configureWith(question: Question) {
        
        self.question.value = question
        
    }
    
    public init() {
        
        let question = self.viewDidLoadProperty.signal.map {
            
            return AppEnviroment.current.fetchQuestion().demoteErrors()
            
        }
        
        self.questionText = question.map { questions in
            
            questions.allValues().first
            
            }.skipNil().map { q in
                
                return "lol"
                
        }
        
    }
    
    public func answered(alternative: Alternative) {
        
    }
    
    public var inputs: QuestionViewModelInputs { return self }
    public var outputs: QuestionViewModelOutputs { return self }
    
    fileprivate let viewDidLoadProperty = MutableProperty()
    public func viewDidLoad() {
        self.viewDidLoadProperty.value = ()
    }
    
}
