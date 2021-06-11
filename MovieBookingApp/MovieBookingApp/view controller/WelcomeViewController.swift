//
//  WelcomeViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/10/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var btnGetStarted: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnGetStaredCorner()

        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func btnGetStaredCorner(){
        btnGetStarted.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        btnGetStarted.layer.borderWidth = 1
        btnGetStarted.layer.cornerRadius = 5
        
        }
    
    
}
