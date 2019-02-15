//
//  LoginViewController.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SignUpDelegate, SignInDelegate, ProfilDelegate{
    
    
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
        
        if mail == "" && password == "" || confirm_password == "" {
           signUp.error.text = "Please enter the fields"
        }else if password != confirm_password {
            signUp.error.text = "The passwords don't match"
        }else {
            
            let user = UserModel(email: mail, password: password)
            RegisterUser.user = user
            signUp.confirm_password.text = ""
            signUp.password.text = ""
            signUp.email.text = ""
            signUp.error.text = ""
            signUp.success.text = "Successfuly sign up"
            self.goToLogin()
        }
        
    }
    
    func login(email: String, password: String){
        
        let userEmail = RegisterUser.user?.email ?? ""
        let userPassword = RegisterUser.user?.password ?? ""
        
        if email == "" || password == "" {
            signIn.error.text = "Please enter your information"
        }else{
            
            if RegisterUser.user == nil {
                signIn.error.text = "Please register first"
            }else if userEmail != email || userPassword != password {
                signIn.error.text = "Email or password incorrect"
            }else {
                print("Successful login")
                signIn.email.text = ""
                signIn.password.text = ""
                signIn.error.text = ""
                signIn.success.text = "Successfuly login"
                self.mail()
                self.goToProfil()
            }
        }
    }
    
    func changeInfo(password: String, new_password: String) {
        if password == "" || new_password == "" {
            profil.error.text = "Please enter your passwords"
        }else{
            if password != new_password {
                profil.error.text = "Password are not matching"
            }else {
                RegisterUser.user?.password = password
                profil.password.text = ""
                profil.new_password.text = ""
                print("Password change successfuly")
            }
            
        }
    }
    
    func mail() {
        let userEmail = RegisterUser.user?.email ?? ""
        profil.mail.text = "Email: \(userEmail)"
    }
    

}
