//
//  CharityCell.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import UIKit

class CharityCell: UITableViewCell {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    public func configure(_ charity: CharityObj) {
        self.lblId.text = "\(charity.id)"
        self.lblName.text = charity.name
        self.imgLogo.image = UIImage(charity.logo_url)
    }
}

//    MARK:- Extension for register cell
extension CharityCell: CellIdentifier {}
