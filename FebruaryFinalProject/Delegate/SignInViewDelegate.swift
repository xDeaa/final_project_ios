//
//  SignInViewDelegate.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import Foundation

protocol SignInDelegate {
    
    func goToRegister()
    func goToProfil()
    func login(email: String, password: String)
}
