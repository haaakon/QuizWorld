//
//  AppEnviroment.swift
//  QuizWorld
//
//  Created by Håkon Bogen on 29/01/17.
//  Copyright © 2017 beiningbogen.no. All rights reserved.
//

import Foundation
import QuizWorldAPI


public struct AppEnviroment {
    
    public static var current: Enviroment!
    
    public static func start() {
        
        self.current = Enviroment(apiService: Service(serverConfig: ServerConfig.local as! ServerConfig), questions: [Question]())
        
    }
}
