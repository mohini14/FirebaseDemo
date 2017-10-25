//
//  ResetPasswordVC.swift
//  FirebaseDemo
//
//  Created by Mohini Sindhu  on 12/10/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

import UIKit
import Firebase

class ResetPasswordVC: UIViewController {

	@IBOutlet weak var emailTextField : UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()

	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	@IBAction func resetButtonPressed(_ sender : AnyObject){
		
		if  emailTextField.text == ""{
			
			Utility.promptMessageOnScreen("Please fill appropriate emailAddress ", viewContoller: self)
		}
		else{
			
			FIRAuth.auth()?.sendPasswordReset(withEmail: emailTextField.text!, completion: { (error) in
				
				if error == nil{
					
					Utility.promptMessageOnScreen("Password reset link sent on mentioned email address", viewContoller: self)
				}
				else
				{
					Utility.promptMessageOnScreen((error?.localizedDescription)!, viewContoller: self)
				}
			})
		}
	}

}
