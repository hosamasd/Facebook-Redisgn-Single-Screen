//
//  GroupsListCollectionVC.swift
//  Facebook Redisgn
//
//  Created by Hossam on 9/29/20.
//

import UIKit

class GroupsListCollectionVC: BaseCollectionVC {
    
    lazy var customNavBar: CustomTopGroupsView = {
        let v = CustomTopGroupsView()
        v.setupShadow(opacity: 0.10, radius: 8, offset: .init(width: 0, height: 6), color: .black)
        
        return v
    }()
    
    
    let navBarHeight: CGFloat = 150
    fileprivate let cellId="cellId"
    fileprivate let headerId="headerId"
   var items = [
        PostModel.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "8 hrs", messageText: "Met this adorable little pup on my lunch break today. Her name is Bean and I will love her forever", postImageName: "post_puppy"),
    PostModel.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "2 weeks", messageText: "This is an amazing course worth checking out right now and I'm doing my best to work on the Chatting Features for when two users match with each other. This text is going to span a lot of lines!!!", postImageName: "tinder_firestore_500"),
    PostModel.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "8 hrs", messageText: "Met this adorable little pup on my lunch break today. Her name is Bean and I will love her forever", postImageName: "post_puppy"),
    PostModel.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "2 weeks", messageText: "This is an amazing course worth checking out right now and I'm doing my best to work on the Chatting Features for when two users match with each other. This text is going to span a lot of lines!!!", postImageName: "tinder_firestore_500"),
    PostModel.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "8 hrs", messageText: "Met this adorable little pup on my lunch break today. Her name is Bean and I will love her forever", postImageName: "post_puppy"),
    PostModel.init(profileImageName: "post_profile", name: "Brianna Valerie • Other People's Puppies", timeAgo: "2 weeks", messageText: "This is an amazing course worth checking out right now and I'm doing my best to work on the Chatting Features for when two users match with each other. This text is going to span a lot of lines!!!", postImageName: "tinder_firestore_500"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(customNavBar)
        customNavBar.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, size: .init(width: 0, height: navBarHeight))
        setupStatusBarCover()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PostCell

        let post = items[indexPath.item]
        cell.post=post
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as!NearbyHeaderCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 210)
    }
    
    // padding
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 6, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // auto sizing cells later....?
        return .init(width: view.frame.width, height: 420)
    }
    
    fileprivate func setupStatusBarCover() {
        let cover = UIView(backgroundColor: .white)
        view.addSubview(cover)
        cover.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.topAnchor, trailing: view.trailingAnchor)
    }
    
    override func setupCollection() {
        collectionView.backgroundColor = #colorLiteral(red: 0.900582552, green: 0.9012405276, blue: 0.9075868726, alpha: 1)
        collectionView.register(PostCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(NearbyHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView.contentInset = .init(top: navBarHeight + 4, left: 0, bottom: 0, right: 0)
        collectionView.scrollIndicatorInsets = collectionView.contentInset
    }
}
