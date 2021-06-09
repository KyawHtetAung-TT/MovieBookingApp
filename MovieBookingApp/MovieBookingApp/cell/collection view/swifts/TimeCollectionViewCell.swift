//
//  TimeCollectionViewCell.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/8/21.
//

import UIKit

class TimeCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var viewTime: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        viewTime.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        viewTime.layer.borderWidth = 1
        viewTime.layer.cornerRadius = 5
    }

}
