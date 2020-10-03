//
//  PostCell.swift
//  Facebook Redisgn
//
//  Created by Hossam on 9/29/20.
//

import UIKit

class PostCell: BaseCollectionCell {
    
    var post:PostModel? {
        didSet {
            guard let item = post else { return  }
            profileImageView.image = UIImage(named: item.profileImageName)
            nameLabel.text = item.name
            messageLabel.text = item.messageText
            postImageView.image = UIImage(named: item.postImageName)
            timeAgoLabel.text = "\(item.timeAgo) • "
        }
    }
    
    
    lazy var profileImageView = CircularImageView(width: 40)
    lazy var nameLabel = UILabel(text: "User Name", font: .boldSystemFont(ofSize: 14))
    lazy var timeAgoLabel = UILabel(text: "12 mins", font: .systemFont(ofSize: 12), textColor: .lightGray)
    lazy var messageLabel = UILabel(text: "Post Message", font: .systemFont(ofSize: 14), numberOfLines: 0)
    lazy var postImageView = UIImageView()
    lazy var globeImageView = CircularImageView(width: 12)
    
    override func setupView() {
        
        backgroundColor = .white
        
        postImageView.contentMode = .scaleAspectFill
        postImageView.clipsToBounds = true
        globeImageView.image = #imageLiteral(resourceName: "earth-globe")
        
        stack(
            hstack(profileImageView,
                   stack(nameLabel,
                         hstack(timeAgoLabel, globeImageView, UIView()), spacing: 0),
                   spacing: 8).withMargins(.init(top: 8, left: 12, bottom: 0, right: 0)),
            hstack(messageLabel).withMargins(.init(top: 0, left: 12, bottom: 0, right: 12)),
            postImageView,
            spacing: 12
        )
    }
}
