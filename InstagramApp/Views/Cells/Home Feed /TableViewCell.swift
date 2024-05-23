//
//  TableViewCell.swift
//  InstagramApp
//
//  Created by Роман  on 23.05.2024.
//

import UIKit

final class IGFeedPostTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public func configure() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
