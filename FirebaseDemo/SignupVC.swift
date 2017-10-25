//
//  SignupVC.swift
//  FirebaseDemo
//
//  Created by Mohini Sindhu  on 12/10/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

import UIKit
import Firebase

class SignupVC: UIViewController {

	@IBOutlet weak var emailTextField : UITextField!
	@IBOutlet weak var passwordTextField : UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	// method creates user or displays the proper message in case of error
	@IBAction func createAccount(_ sender: AnyObject){
		
		
		if emailTextField.text == ""{
			
			Utility.promptMessageOnScreen("email is required", viewContoller: self)
		}
		
		else if passwordTextField.text == ""{
			Utility.promptMessageOnScreen("password is required", viewContoller: self)
		}
		
		else{
			
			FIRAuth.auth()?.createUser(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
				
				if error == nil{
					
				Utility.promptMessageOnScreen("User created successfully", viewContoller: self)
				}
					
				else{
					Utility.promptMessageOnScreen((error?.localizedDescription)!, viewContoller: self)
				}
			})
		}
	}
}
