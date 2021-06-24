//
//  VisaViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/23/21.
//

import UIKit

class VisaViewController: UIViewController {

    @IBOutlet weak var visaCollectionCell: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        visaCollectionCell.delegate = self
        visaCollectionCell.dataSource = self
        visaCollectionCell.register(UINib(nibName: String(describing: VisaCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: VisaCollectionViewCell.self))
        
        
    }
    

    
    

}
extension VisaViewController : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: VisaCollectionViewCell.self), for: indexPath) as? VisaCollectionViewCell else {
         return UICollectionViewCell()
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 270, height: 150)
    }
    
    
}
