//
//  LoginViewController.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SignUpDelegate {
    
    @IBOutlet var signUp: SignUpView!
    @IBOutlet var signIn: SignInView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUp.delegate = self
        
        signUp.isHidden = false
        signIn.isHidden = true
    }
    
    func getToLogin() {
        signUp.isHidden = true
        signIn.isHidden = false

    }
 

}
