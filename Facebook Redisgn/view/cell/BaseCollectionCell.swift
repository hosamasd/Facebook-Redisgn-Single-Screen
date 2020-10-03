//
//  BaseCollectionCell.swift
//  Facebook Redisgn
//
//  Created by Hossam on 9/29/20.
//

import UIKit

class BaseCollectionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // UI Setup
        setupView()
    }
    
    func setupView()  {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
