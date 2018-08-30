//
//  CharitiesViewController.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import UIKit

class CharitiesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let dataSource = CharityDatasource()
    
    fileprivate lazy var viewModel: CharityViewModel = {
        let viewModel = CharityViewModel(dataSource: dataSource)
        return viewModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(CharityCell.self)
        self.tableView.dataSource = dataSource
        self.dataSource.data.addAndNotify(self) {[weak self] in
            self?.tableView.reloadData()
        }
        
        self.viewModel.fetchCharities()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
