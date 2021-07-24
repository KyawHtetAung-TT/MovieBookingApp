//
//  NowShowingTableViewCell.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/13/21.
//

import UIKit

class NowShowingTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewNowShowing: UICollectionView!
    @IBOutlet weak var collectionViewComingSoon: UICollectionView!
    
    var delegate:MoiveItemDelegate? = nil
    
    var data : NSMovielistResponse?{
        didSet{
            if let data = data{
                collectionViewNowShowing.reloadData()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        registerComingSoonCollectionView()
        registerNowShowingCollectionView()
    }

    
    func registerComingSoonCollectionView(){
        collectionViewNowShowing.dataSource = self
        collectionViewNowShowing.delegate = self
        
        collectionViewNowShowing.register(UINib(nibName:String(describing: NowShowingCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: NowShowingCollectionViewCell.self))
        
    }
    
    func registerNowShowingCollectionView(){
        collectionViewComingSoon.dataSource = self
        collectionViewComingSoon.delegate = self
        
        collectionViewComingSoon.register(UINib(nibName:String(describing: NowShowingCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: NowShowingCollectionViewCell.self))
        
    }
    
    

}


extension NowShowingTableViewCell : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data?.movie?.count ?? 0
    }
    private func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewNowShowing {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingCollectionViewCell.self), for: indexPath) as? NowShowingCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.data = data?.movie?[indexPath.row]
            return cell
        }
        else if collectionView == collectionViewComingSoon{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingCollectionViewCell.self), for: indexPath) as? NowShowingCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let itemWidth : CGFloat = 180
        let itemHeight : CGFloat = collectionView.frame.height
        return CGSize(width: itemWidth, height: itemHeight)
    }
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.onTapMovie()
    }

    
}













