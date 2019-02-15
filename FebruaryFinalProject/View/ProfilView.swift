//
//  ProgilView.swift
//  FebruaryFinalProject
//
//  Created by Andrea SERRANO on 14/02/2019.
//  Copyright © 2019 Andrea SERRANO. All rights reserved.
//

import UIKit

class ProfilView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet var mail: UILabel!
    @IBOutlet var password: UITextField!
    @IBOutlet var new_password: UITextField!
    @IBOutlet var error: UILabel!    
    
    var delegate : ProfilDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("ProfilView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    @IBAction func login(_ sender: Any) {
        delegate?.goToLogin()
    }
    @IBAction func changePassword(_ sender: Any) {
        delegate?.changeInfo(password: password.text ?? "", new_password: new_password.text ?? "")
    }
    
}
