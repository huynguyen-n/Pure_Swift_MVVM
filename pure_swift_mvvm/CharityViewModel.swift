//
//  CharityViewModel.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import UIKit

struct CharityViewModel {
    
    weak var dataSource: Datasource<CharityObj>?
    
    init(dataSource: Datasource<CharityObj>?) {
        self.dataSource = dataSource
    }
    
    func fetchCharities() {
        CharityRequest().excute(onSuccess: { results in
            self.dataSource?.data.value = results
        }, onError: { _ in })
    }
}

class CharityDatasource: Datasource<CharityObj>, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CharityCell.identifier, for: indexPath) as! CharityCell
        cell.configure(data.value[indexPath.row])
        return cell
    }
}
