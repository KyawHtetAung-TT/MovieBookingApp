//
//  NowShowingCollectionViewCell.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/14/21.
//

import UIKit
import SDWebImage

class NowShowingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageViewPosterdrop: UIImageView!
    @IBOutlet weak var labeltitle: UILabel!
    @IBOutlet weak var lblGenreandDate: UILabel!
   
    
    var data : dataMovielist?{
        didSet {
            if let data = data {
                
            let posterPath = "\(AppConstants.baseImageUrl)\(data.posterPath ?? "")"
            imageViewPosterdrop.sd_setImage(with: URL(string: posterPath))
                
            labeltitle.text = data.originalTitle ?? ""
            let genre = data.genres ?? ["Action"]
            let releasedata = data.releaseDate ?? "undefined"
                lblGenreandDate.text = "\(genre)-\(releasedata)"


                
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
