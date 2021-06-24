//
//  AwesomeViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/23/21.
//

import UIKit

class AwesomeViewController: UIViewController {

    @IBOutlet weak var Imgpikachu: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        Imgpikachu.layer.cornerRadius = 20
        Imgpikachu.layer.maskedCorners = [.layerMinXMinYCorner  , .layerMaxXMinYCorner]
        
        
        // Do any additional setup after loading the view.
    }
    

    

}
