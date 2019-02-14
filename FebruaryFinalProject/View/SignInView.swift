//
//  SignInView.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import UIKit

class SignInView: UIView {

   @IBOutlet var contentView: UIView!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    var delegate : SignInDelegate?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()

    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit(){
        Bundle.main.loadNibNamed("SignInView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    @IBAction func register(_ sender: Any) {
        delegate?.goToRegister()
    }
    
    @IBAction func login(_ sender: Any) {
        let textEmail = email.text ?? ""
        let textPassword = password.text ?? ""
        
        delegate?.login(email: textEmail, password: textPassword)
        
        
        
    }
    
}
