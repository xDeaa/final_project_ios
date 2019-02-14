//
//  SifnUpViewDelegate.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import Foundation

protocol SignUpDelegate {
    
     func goToLogin()
    func register(mail: String, password: String, confirm_password: String)
}
