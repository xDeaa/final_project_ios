//
//  ProfilViewDelegate.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import Foundation

protocol ProfilDelegate {
    
    func goToLogin()
    func changeInfo(mail: String, password: String, new_password: String)
}
