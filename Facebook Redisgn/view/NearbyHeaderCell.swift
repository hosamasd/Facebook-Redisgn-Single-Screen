//
//  NearbyHeaderCell.swift
//  Facebook Redisgn
//
//  Created by Hossam on 9/29/20.
//

import UIKit

class NearbyHeaderCell: UICollectionReusableView {
    
    lazy var titleLabel = UILabel(text: "Nearby", font: .boldSystemFont(ofSize: 18))
    lazy var nearbyGroupsController = NearbyGroupsCollectionVC()
    
    lazy var radiusLabel = UILabel(text: "5 mi. radius", font: .systemFont(ofSize: 12), textColor: .darkGray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        stack(
            hstack(titleLabel.withHeight(40), radiusLabel).withMargins(.init(top: 0, left: 16, bottom: 0, right: 16)),
            nearbyGroupsController.view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
