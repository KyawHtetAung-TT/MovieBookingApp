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
        collectionViewNowShowing.register(UINib(nibName:String(describing: NowShowingsecondCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: NowShowingsecondCollectionViewCell.self))
        collectionViewNowShowing.register(UINib(nibName:String(describing: NowShowingthirdCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: NowShowingthirdCollectionViewCell.self))
    }
    
    func registerNowShowingCollectionView(){
        collectionViewComingSoon.dataSource = self
        collectionViewComingSoon.delegate = self
        
        collectionViewComingSoon.register(UINib(nibName:String(describing: NowShowingCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: NowShowingCollectionViewCell.self))
        collectionViewComingSoon.register(UINib(nibName:String(describing: NowShowingsecondCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: NowShowingsecondCollectionViewCell.self))
        collectionViewComingSoon.register(UINib(nibName:String(describing: NowShowingthirdCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: NowShowingthirdCollectionViewCell.self))
    }
    
    

}


extension NowShowingTableViewCell: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewNowShowing {
            switch indexPath.section {
            case 0:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingCollectionViewCell.self), for: indexPath) as? NowShowingCollectionViewCell else {
                    return UICollectionViewCell()
                }
                
                return cell
            case 1:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingsecondCollectionViewCell.self), for: indexPath) as? NowShowingsecondCollectionViewCell else {
                    return UICollectionViewCell()
                }
                return cell
            case 2:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingthirdCollectionViewCell.self), for: indexPath) as? NowShowingthirdCollectionViewCell else {
                    return UICollectionViewCell()
                }
                return cell
            default:
                return UICollectionViewCell()
            }

        }else if collectionView == collectionViewComingSoon  {
            switch indexPath.section {
            case 0:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingCollectionViewCell.self), for: indexPath) as? NowShowingCollectionViewCell else {
                    return UICollectionViewCell()
                }
                
                return cell
            case 1:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingsecondCollectionViewCell.self), for: indexPath) as? NowShowingsecondCollectionViewCell else {
                    return UICollectionViewCell()
                }
                return cell
            case 2:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: NowShowingthirdCollectionViewCell.self), for: indexPath) as? NowShowingthirdCollectionViewCell else {
                    return UICollectionViewCell()
                }
                return cell
            default:
                return UICollectionViewCell()
            
            }
        }
        
        return UICollectionViewCell()
     

        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if collectionView == collectionViewNowShowing{
            return CGSize(width: collectionView.bounds.width/2.5, height: 240)
//        }else{
//            return CGSize(width: collectionView.frame.width/3, height: 240)
//        }
    }
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.onTapMovie()
    }
}
