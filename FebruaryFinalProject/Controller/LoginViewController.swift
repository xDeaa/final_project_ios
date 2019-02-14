//
//  LoginViewController.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SignUpDelegate, SignInDelegate, ProfilDelegate{
    func changeInfo(mail: String, password: String, new_password: String) {
        
    }
    
    @IBOutlet var signUp: SignUpView!
    @IBOutlet var signIn: SignInView!
    @IBOutlet var profil: ProfilView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUp.delegate = self
        signIn.delegate = self
        profil.delegate = self
        self.goToRegister()
        
    }
    
    func goToLogin() {
        signUp.isHidden = true
        signIn.isHidden = false
        profil.isHidden = true

    }
    
    func goToRegister() {
        signUp.isHidden = false
        signIn.isHidden = true
        profil.isHidden = true
    }
    
    func goToProfil() {
        signIn.isHidden = true
        signUp.isHidden = true
        profil.isHidden = false
    }
    
    func register(mail: String, password: String, confirm_password: String) {
        
        if mail == "" || password == "" || confirm_password == "" {
           print("Please enter the field")
        }else if password != confirm_password {
            print("The password is different to confirmation")
        }else {
            
            let user = UserModel(email: mail, password: password)
            RegisterUser.user = user
            self.goToLogin()
        }
        
    }
    
    func login(email: String, password: String){
       
        let userEmail = RegisterUser.user?.email ?? ""
        let userPassword = RegisterUser.user?.password ?? ""
        
//        guard RegisterUser.user != nil else {
//            print("Please register first")
//            return
//        }
//
//        guard email != "" else {
//            print("Please enter your email")
//            return
//        }
//
//        guard password != "" else {
//            print("Please enter your password")
//            return
//        }
        if RegisterUser.user == nil {
            print("Please register first")
        }else{
            
            if email == "" || password == "" {
                print("Please enter your information")
            }else if userEmail != email && userPassword != password {
                print("Email or password are invalid")
            }else {
                print("Successful login")
                self.goToProfil()
            }
            
        }
        
//        guard textEmail == userEmail && textPassword == userPassword else {
//            print("Unable to find a match with this pair of email / password")
//            return
//        }
    }
    
    

}
