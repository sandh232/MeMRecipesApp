//
//  SiteCellTableViewCell.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-10.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class HomeSiteCell: UITableViewCell {
    
    let primaryLabel = UILabel()
    let secondaryLabel = UILabel()
    let myImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        primaryLabel.textAlignment = .left
        primaryLabel.font = UIFont.boldSystemFont(ofSize: 30)
        primaryLabel.backgroundColor = .clear
        primaryLabel.textColor = .black
        
        secondaryLabel.textAlignment = .left
        secondaryLabel.font = UIFont.boldSystemFont(ofSize: 12)
        secondaryLabel.backgroundColor = .clear
        secondaryLabel.textColor = .blue
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(primaryLabel)
        
        contentView.addSubview(secondaryLabel)
        
        contentView.addSubview(myImageView)
        
        
    }
    
    override func layoutSubviews() {
        primaryLabel.frame = CGRect(x: 100, y: 5, width: 460, height: 30)
        secondaryLabel.frame = CGRect(x: 100, y: 40, width: 460, height: 30)
        
        myImageView.frame = CGRect(x: 5, y: 5, width: 55, height: 55)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
