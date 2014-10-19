//
//  ViewController.swift
//  Postcard
//
//  Created by Scott Brady on 10/15/14.
//  Copyright (c) 2014 Spider Monkey Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var messageTextField: UITextField!
	@IBOutlet weak var mailButton: UIButton!


	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func sendMailButtonPressed(sender: UIButton)
	{
		messageLabel.hidden = false
		messageLabel.text = messageTextField.text
		messageLabel.textColor = UIColor.redColor()

		messageTextField.text = ""
		messageTextField.resignFirstResponder()

		nameLabel.hidden = false
		nameLabel.text = nameTextField.text
		nameLabel.textColor = UIColor.blueColor()

		nameTextField.text = ""
		
		mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
	}
}

