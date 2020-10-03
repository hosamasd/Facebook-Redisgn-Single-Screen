//
//  NearbyCell.swift
//  Facebook Redisgn
//
//  Created by Hossam on 10/3/20.
//

import UIKit


class NearbyCell: BaseCollectionCell {
    
    lazy var imageView = UIImageView()
    lazy var nameLabel = UILabel(text: "Group Name", font: .systemFont(ofSize: 12, weight: .semibold), numberOfLines: 2)
    
     var grop: GroupModel? {
        didSet {
            guard let item = grop else { return  }
            imageView.image = UIImage(named: item.imageName)
            nameLabel.text = item.name
        }
    }
    
    override func setupView() {
        imageView.layer.cornerRadius = 6
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        
        stack(imageView, nameLabel)//.withMargins(.init(top: 8, left: 16, bottom: 8, right: 8))
    }
    
}
