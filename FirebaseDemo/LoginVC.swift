//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Mohini Sindhu  on 12/10/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

	@IBOutlet weak var emailTextField : UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func loginAction(_ sender : AnyObject){
		
		if emailTextField.text == "" || passwordTextField.text == "" {
			
			Utility.promptMessageOnScreen("Please fill all the fields", viewContoller: self)
		}
		
		else{
			
			FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
				
				if error == nil{
					
					Utility.promptMessageOnScreen("Successful login", viewContoller: self)
				}
				else{
					Utility.promptMessageOnScreen((error?.localizedDescription)!, viewContoller: self)
				}
			})
		}
	}


}

