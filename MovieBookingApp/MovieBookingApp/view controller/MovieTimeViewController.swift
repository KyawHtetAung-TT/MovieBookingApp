//
//  MovieTimeViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/8/21.
//

import UIKit

class MovieTimeViewController: UIViewController {

    @IBOutlet weak var viewContatinerTime: UIView!
    @IBOutlet weak var collectionViewDays: UICollectionView!
    @IBOutlet weak var collectionViewAvailableIn: UICollectionView!
    @IBOutlet weak var collectionViewGoldenCity: UICollectionView!
    @IBOutlet weak var collectiionViewWestPoint: UICollectionView!
    
    
    @IBOutlet weak var collectionViewHeightAvailableIn: NSLayoutConstraint!
    @IBOutlet weak var collectionViewHeightGoldenCity: NSLayoutConstraint!
    @IBOutlet weak var collectionViewHeightWestPoint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataSourceandDelegate()
        ViewContainerTime()
        collectionViewHeightSetup()
        registerCell()
        
        // Do any additional setup after loading the view.
    }
    
    fileprivate func ViewContainerTime(){
        
        
        viewContatinerTime.clipsToBounds = true
        viewContatinerTime.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        viewContatinerTime.layer.cornerRadius = 16
    }
    

    fileprivate func DataSourceandDelegate(){
    
        collectionViewDays.dataSource = self
        collectionViewDays.delegate = self
        
        collectionViewAvailableIn.dataSource = self
        collectionViewAvailableIn.delegate = self
        
        collectionViewGoldenCity.dataSource = self
        collectionViewGoldenCity.delegate = self
        
        collectiionViewWestPoint.dataSource = self
        collectiionViewWestPoint.delegate = self
    }
    
    
    fileprivate func registerCell(){
        
        collectionViewDays.register(UINib(nibName: String(describing: DayCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: DayCollectionViewCell.self))
        
        collectionViewAvailableIn.register(UINib(nibName: String(describing: TimeCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: TimeCollectionViewCell.self))
        
        collectionViewGoldenCity.register(UINib(nibName: String(describing: TimeCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: TimeCollectionViewCell.self))
        
        collectiionViewWestPoint.register(UINib(nibName: String(describing: TimeCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: TimeCollectionViewCell.self))
    }
    
    fileprivate func collectionViewHeightSetup(){
        
        collectionViewHeightAvailableIn.constant = 56
        collectionViewHeightGoldenCity.constant = 56 * 2
        collectionViewHeightWestPoint.constant = 56 * 2
//        self.view.layoutIfNeeded()
    }
    
    
}


extension MovieTimeViewController : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewDays{
            return 10
        }else if collectionView == collectionViewAvailableIn{
            return 3
        }else{
            return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if collectionView == collectionViewDays{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DayCollectionViewCell.self), for: indexPath) as? DayCollectionViewCell else {
            return UICollectionViewCell()
            }
            return cell
        }else{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: TimeCollectionViewCell.self), for: indexPath) as? TimeCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        }
            
            
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionViewDays {
            return CGSize(width: 70, height: 100)
        }else{
            return CGSize(width: collectionView.bounds.width/3, height: 50)
        }
    }
    
    
}
