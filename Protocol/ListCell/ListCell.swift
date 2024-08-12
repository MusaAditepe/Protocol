//
//  ListCell.swift
//  Protocol
//
//  Created by Musa Adıtepe on 12.08.2024.
//

import UIKit
protocol ListItemProtocol{
    var iconName: String {get}
    var titleText: String {get}
}

class ListCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
   
    func configure(data: ListItemProtocol){
        titleLabel.text = data.titleText
        iconImage.image = UIImage(named: data.iconName)
    }
    
}
