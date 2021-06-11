//
//  LoginViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/12/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var collectionViewLoginSigin: UICollectionView!
    
    @IBOutlet weak var txtfieldEmail: UITextField!
    @IBOutlet weak var txtfieldPassword: UITextField!
    
    @IBOutlet weak var btnSigninFacebook: UIButton!
    @IBOutlet weak var btnSigninGoogle: UIButton!
    @IBOutlet weak var btnConfirm: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCollectionViewCell()
        
    }
    
    func registerCollectionViewCell(){
        
        collectionViewLoginSigin.dataSource = self
        collectionViewLoginSigin.delegate = self
        
        collectionViewLoginSigin.register(UINib(nibName: String(describing: LoginSigninCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: LoginSigninCollectionViewCell.self))
    }
   
    
    
}
extension LoginViewController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: LoginSigninCollectionViewCell.self), for: indexPath) as? LoginSigninCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/2, height: 50)
    }
    
}
