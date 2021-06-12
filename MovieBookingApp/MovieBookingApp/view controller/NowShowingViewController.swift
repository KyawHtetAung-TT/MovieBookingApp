//
//  NowShowingViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/12/21.
//

import UIKit

class NowShowingViewController: UIViewController,MoiveItemDelegate{
   
    
    
    @IBOutlet weak var tableViewNowShowing: UITableView!
    
   override func viewDidLoad() {
        super.viewDidLoad()

    tableViewNowShowing.dataSource = self
    tableViewNowShowing.register(UINib(nibName: String(describing: NowShowingTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: NowShowingTableViewCell.self))
    
    
    }

    func onTapMovie() {
        
        navigatetoGetTicketViewController()
        
    }
    
   
}
extension NowShowingViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:NowShowingTableViewCell.self), for: indexPath) as? NowShowingTableViewCell else {
            return UITableViewCell()
        }
        cell.delegate = self
        return cell
    }
    
    
}
