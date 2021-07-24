//
//  NowShowingViewController.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/12/21.
//

import UIKit

class NowShowingViewController: UIViewController,MoiveItemDelegate{
   
    private let networkAgent = MovieBookingDBNetworkAgent.shared
    
    private var nowshowingMovieList : NSMovielistResponse?
    
    @IBOutlet weak var tableViewNowShowing: UITableView!
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
    registerNowShowingTableView()
    fetchNSMovieList()
    }
    
    
    func fetchNSMovieList(){
        networkAgent.getNSMovieList { (data) in
            self.nowshowingMovieList = data
            self.tableViewNowShowing.reloadData()
        } failure: { (error) in
            print(error)
        }

    }
    
    
    func onTapMovie() {
        navigatetoGetTicketViewController()
    }
    
    func registerNowShowingTableView(){
        tableViewNowShowing.delegate = self
        tableViewNowShowing.dataSource = self
        tableViewNowShowing.register(UINib(nibName: String(describing: NowShowingTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: NowShowingTableViewCell.self))
    }
    
}

extension NowShowingViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:NowShowingTableViewCell.self), for: indexPath) as? NowShowingTableViewCell else {
            return UITableViewCell()
        }
        
        cell.delegate = self
        cell.data = nowshowingMovieList
        return cell
    }
    
    
}
