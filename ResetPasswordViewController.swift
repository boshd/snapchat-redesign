//
//  ResetPasswordViewController.swift
//  app3
//
//  Created by Kareem Arab on 2016-01-17.
//  Copyright © 2016 Kareem Arab. All rights reserved.
//

import UIKit
import Parse

class ResetPasswordViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var emailField: UITextField!

    @IBOutlet weak var halawala: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.emailField.delegate = self;
        
        let filePath = NSBundle.mainBundle().pathForResource("giphy-3", ofType: "gif")
        let gif = NSData(contentsOfFile: filePath!)
        
        
        let webViewBG = UIWebView(frame: self.halawala.frame)
        webViewBG.loadData(gif!, MIMEType: "image/gif", textEncodingName: "utf-8",
            baseURL: NSURL(string: "http://localhost/")!)
        webViewBG.userInteractionEnabled = false;
        self.halawala.addSubview(webViewBG)
        
        let filter = UIView()
        filter.frame = self.halawala.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.3
        self.halawala.addSubview(filter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func passwordReset(sender: AnyObject) {
        let email = self.emailField.text
        let finalEmail = email!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        // Send a request to reset a password
        PFUser.requestPasswordResetForEmailInBackground(finalEmail)
        
        let alert = UIAlertController (title: "Password Reset", message: "An email containing information on how to reset your password has been sent to " + finalEmail + ".", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
