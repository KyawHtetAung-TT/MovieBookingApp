//
//  MovieSeatViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/8/21.
//

import UIKit

class MovieSeatViewController: UIViewController {

    @IBOutlet weak var collectionViewMovieSeat: UICollectionView!
    override func viewDidLoad() {
            super.viewDidLoad()
            
            DataSourceandDelegate()
            registerCell()
            
            // Do any additional setup after loading the view.
        }

        fileprivate func DataSourceandDelegate(){
        
            collectionViewMovieSeat.dataSource = self
            collectionViewMovieSeat.delegate = self
          
        }
        
        fileprivate func registerCell(){
            
            collectionViewMovieSeat.register(UINib(nibName: String(describing: MovieSeatCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MovieSeatCollectionViewCell.self))
                       
        }
     
    }

    extension MovieSeatViewController : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return dummyMovieSeats.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MovieSeatCollectionViewCell.self), for: indexPath) as? MovieSeatCollectionViewCell else {
                return UICollectionViewCell()
                }
            cell.bindData(movieSeatVO: dummyMovieSeats[indexPath.row])
                return cell
        }
        
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           
            return CGSize(width: collectionView.bounds.width / 10, height: CGFloat(40))
        }
}

