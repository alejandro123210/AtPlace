//
//  tourChoose.swift
//  CoreML in ARKit
//
//  Created by Stephanie on 3/4/18.
//  Copyright © 2018 CompanyName. All rights reserved.
//

import UIKit

class tourChoose: UIViewController {

    @IBOutlet weak var schoolChoose: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonDesign()
        animationElement()

        // Do any additional setup after loading the view.
    }

    
    func animationElement() {
        UIButton.animate(withDuration: 1, animations: {
            self.schoolChoose.frame.origin.y -= -100
        }, completion: nil)
        
        
        
    }

    
    func buttonDesign() {
        schoolChoose.backgroundColor = UIColor.blue
        schoolChoose.layer.cornerRadius = schoolChoose.frame.height / 2
        schoolChoose.setTitleColor(UIColor.white, for: .normal)
        
        schoolChoose.layer.shadowColor = UIColor.red.cgColor
        schoolChoose.layer.shadowRadius = 6
        
        
    }

}
