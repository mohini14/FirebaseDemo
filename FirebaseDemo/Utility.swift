//
//  Utility.swift
//  FirebaseDemo
//
//  Created by Mohini Sindhu  on 25/10/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

import UIKit

class Utility: NSObject {
	
	
	//MARK:Alerts on Screen
	class func promptMessageOnScreen (_ message : String, viewContoller: UIViewController) -> ()
	{
		
		let alert = UIAlertController(title: NSLocalizedString("ALert", comment: "") ,message: message , preferredStyle: UIAlertControllerStyle.alert)
		alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler:nil))
		viewContoller.present(alert, animated:true, completion:nil)
	}

}
