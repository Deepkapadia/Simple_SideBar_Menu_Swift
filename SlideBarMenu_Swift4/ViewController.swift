//
//  ViewController.swift
//  SlideBarMenu_Swift4
//
//  Created by DeEp KapaDia on 18/05/18.
//  Copyright © 2018 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SideConstrain: NSLayoutConstraint!
    
    //one variable that can handle all conditions
    var isSlideHide = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Loading Slider Shlould be off side So Values in - Minus
        SideConstrain.constant = -140
    }

   
    @IBAction func PlayAnimateBarBTN(_ sender: UIBarButtonItem) {
        
        //Condition for Slider 0 to minus -165 Steps
        if isSlideHide {
            SideConstrain.constant = 0
//            
//            //Animation code for View
//            UIView.animate(withDuration: 0.3, animations: {
//                self.view.layoutIfNeeded()
//            })
        }else{
            SideConstrain.constant = -140
            
//            //Animation code for View
//            UIView.animate(withDuration: 0.3, animations: {
//                self.view.layoutIfNeeded()
//
//            })
            
            //For animation to hise again
            isSlideHide = !isSlideHide
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

