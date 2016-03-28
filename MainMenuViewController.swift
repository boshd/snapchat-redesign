//
//  MainMenuViewController.swift
//  Hype
//
//  Created by Kareem Arab on 2016-01-21.
//  Copyright © 2016 Kareem Arab. All rights reserved.
//

import UIKit
import Parse
import AVFoundation
import AVKit
import QuartzCore
import MediaPlayer


class MainMenuViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Btn: UILabel!
    
    @IBOutlet weak var nwa: UIWebView!
    // @IBOutlet weak var halaa: UIImageView!
 
    @IBOutlet weak var halaz: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Btn.center.y = self.view.frame.width + 230
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 1.0 , initialSpringVelocity: 5.0, options: [], animations: ({
        
            self.Btn.center.y = self.view.frame.width / 2
        
        }), completion: nil)

        //halaz.alpha = 0.5
        //halaz.backgroundColor = UIColor.blackColor()
        //halaz.opaque = false
  /*
        let filePath = NSBundle.mainBundle().pathForResource("ezgif.com-resize-2", ofType: "gif")
        let gif = NSData(contentsOfFile: filePath!)
        
        let webViewBG = UIWebView(frame: self.halaz.frame)
        webViewBG.loadData(gif!, MIMEType: "image/gif", textEncodingName: "utf-8",
            baseURL: NSURL(string: "http://localhost/")!)
        webViewBG.userInteractionEnabled = false;
        self.halaz.addSubview(webViewBG)
        
        let filter = UIView()
        filter.frame = self.halaz.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.3
        self.halaz.addSubview(filter)
*/
        //uyyyugyggyyyggy + er
        
        let filePather = NSBundle.mainBundle().pathForResource("giphy-3", ofType: "gif")
        let gifer = NSData(contentsOfFile: filePather!)
        
        
        let webViewBGer = UIWebView(frame: self.nwa.frame)
        webViewBGer.loadData(gifer!, MIMEType: "image/gif", textEncodingName: "utf-8",
            baseURL: NSURL(string: "http://localhost/")!)
        webViewBGer.userInteractionEnabled = false;
        self.nwa.addSubview(webViewBGer)
        
        let filterer = UIView()
        filterer.frame = self.nwa.frame
        filterer.backgroundColor = UIColor.blackColor()
        filterer.alpha = 0.3
        self.nwa.addSubview(filterer)
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindMainMenuScreen(segue:UIStoryboardSegue) {
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
