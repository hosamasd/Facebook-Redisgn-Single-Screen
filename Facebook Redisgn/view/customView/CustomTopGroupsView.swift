//
//  CustomTopGroupsView.swift
//  Facebook Redisgn
//
//  Created by Hossam on 10/3/20.
//

import UIKit

class CustomTopGroupsView: UIView {
    
    lazy var groupsLabel = UILabel(text: "Groups", font: .systemFont(ofSize: 32), textColor: .black)
    lazy var groupsOptionsController = GroupsOptionsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews()  {
        backgroundColor = .white
        let ss = hstack(groupsLabel).padLeft(16)
        
        groupsOptionsController.view.constrainHeight(constant: 40)
        stack(ss,groupsOptionsController.view).withMargins(.init(top: 0, left: 0, bottom: 12, right: 0))
    }
}
