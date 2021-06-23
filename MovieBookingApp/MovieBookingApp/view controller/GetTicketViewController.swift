//
//  GetTicketViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/13/21.
//

import UIKit

class GetTicketViewController: UIViewController {

    @IBOutlet weak var GenreCollectionCell: UICollectionView!
    @IBOutlet weak var CostCollectionCell: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       GenreCollection()
        CostCollection()
        // Do any additional setup after loading the view.
    }
    

    func GenreCollection(){
        GenreCollectionCell.dataSource = self
        GenreCollectionCell.delegate = self
        
        GenreCollectionCell.register(UINib(nibName: String(describing: GenreCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: GenreCollectionViewCell.self))

    }
    func CostCollection(){
        CostCollectionCell.dataSource = self
        CostCollectionCell.delegate = self
        
        CostCollectionCell.register(UINib(nibName: String(describing: CastCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: CastCollectionViewCell.self))

    }

}
extension GetTicketViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == GenreCollectionCell{
            return 2
        }else{
            return 4
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == GenreCollectionCell{
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GenreCollectionViewCell.self) , for: indexPath) as? GenreCollectionViewCell else {
            return UICollectionViewCell()
            
        }
        return cell
        }else{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CastCollectionViewCell.self) , for: indexPath) as? CastCollectionViewCell else {
                return UICollectionViewCell()
                
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == GenreCollectionCell{
            return CGSize(width: collectionView.bounds.width / 3, height: 50)
        }else{
            return CGSize(width: 50, height: 50)
        }
    }
    
    
}
