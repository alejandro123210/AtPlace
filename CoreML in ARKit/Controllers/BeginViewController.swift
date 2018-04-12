//
//  BeginViewController.swift
//  CoreML in ARKit
//
//  Created by Stephanie on 3/3/18.
//  Copyright © 2018 CompanyName. All rights reserved.
//

import UIKit
import SVProgressHUD

class BeginViewController: UIViewController {

    @IBOutlet weak var beginButton: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationElement()
        
         buttonDesign()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func buttonChange(_ sender: Any) {
       performSegue(withIdentifier: "School", sender: self)
       
    }
    
    
    
    
    

    func animationElement() {
        UIButton.animate(withDuration: 1, animations: {
            self.beginButton.frame.origin.y -= -400
        }, completion: nil)
        
        UIView.animate(withDuration: 1, animations: {
            self.logoImage.frame.origin.y -= -400
        }, completion: nil)
       
    }
    
    func buttonDesign() {
        beginButton.backgroundColor = UIColor.blue
        beginButton.layer.cornerRadius = beginButton.frame.height / 2
        beginButton.setTitleColor(UIColor.white, for: .normal)
        
        beginButton.layer.shadowColor = UIColor.red.cgColor
        beginButton.layer.shadowRadius = 6
        
        
    }

}
