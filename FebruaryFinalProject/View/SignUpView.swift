//
//  SignUpView.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import UIKit

class SignUpView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var confirm_password: UITextField!
    @IBOutlet var signUp: UIButton!
    @IBOutlet var error: UILabel!
    @IBOutlet var success: UILabel!
    
    var delegate : SignUpDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    @IBAction func login(_ sender: Any) {
        
        delegate?.goToLogin()
    }
    
    @IBAction func register(_ sender: Any) {
        
        let textEmail = email.text ?? ""
        let textPassword = password.text ?? ""
        let textConfirm = confirm_password.text ?? ""
        
        delegate?.register(mail: textEmail, password: textPassword, confirm_password: textConfirm)
    }
    
}
