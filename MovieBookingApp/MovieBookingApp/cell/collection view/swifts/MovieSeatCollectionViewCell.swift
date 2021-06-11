//
//  MovieSeatCollectionViewCell.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/10/21.
//

import UIKit

class MovieSeatCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewContainerMovieSeat: UIView!
    @IBOutlet weak var lblMoiveSeatTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func bindData(movieSeatVO : MovieSeatVo){
        lblMoiveSeatTitle.text = movieSeatVO.title
        
        if movieSeatVO.isMovieSeatRowTitle(){
            viewContainerMovieSeat.layer.cornerRadius = 0
            viewContainerMovieSeat.backgroundColor = UIColor.white
        }
        else if movieSeatVO.isMovieSeatAvailable(){
            viewContainerMovieSeat.clipsToBounds = true
            viewContainerMovieSeat.layer.cornerRadius = 8
            viewContainerMovieSeat.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
            viewContainerMovieSeat.backgroundColor = UIColor(named: "movie-seat-available-color") ?? UIColor.gray
            
        }
        else if movieSeatVO.isMovieSeatTaken(){
            viewContainerMovieSeat.clipsToBounds = true
            viewContainerMovieSeat.layer.cornerRadius = 8
            viewContainerMovieSeat.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
            viewContainerMovieSeat.backgroundColor = UIColor(named: "movie-seat-taken-color") ?? UIColor.lightGray
            
        }
        else if movieSeatVO.isPrimary(){
            viewContainerMovieSeat.clipsToBounds = true
            viewContainerMovieSeat.layer.cornerRadius = 8
            viewContainerMovieSeat.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
            viewContainerMovieSeat.backgroundColor = UIColor(named: "Primary") ?? UIColor.purple
            
        }
        else {
            viewContainerMovieSeat.layer.cornerRadius = 0
            viewContainerMovieSeat.backgroundColor = UIColor.white
        }
        
    }
    
}
