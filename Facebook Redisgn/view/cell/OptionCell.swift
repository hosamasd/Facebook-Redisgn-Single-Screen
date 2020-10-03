//
//  OptionCell.swift
//  Facebook Redisgn
//
//  Created by Hossam on 10/3/20.
//

import UIKit

class OptionCell: BaseCollectionCell {
    
    var option:OptionModel?{
        didSet{
            guard let item = option else { return  }
            titleLabel.text = item.title
            iconImageView.image = UIImage(named: item.iconName)
        }
    }
    
    
    lazy var titleLabel = UILabel(text: "Title", font: .boldSystemFont(ofSize: 14))
    lazy var iconImageView = UIImageView()
    
    override func setupView() {
        backgroundColor = #colorLiteral(red: 0.9281324744, green: 0.9288102984, blue: 0.9350962043, alpha: 1)
        iconImageView.contentMode = .scaleAspectFit
        let sv = stack(hstack(iconImageView.withWidth(18), titleLabel, spacing: 8))
        sv.alignment = .center
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 2
    }
    
}
