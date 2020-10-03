//
//  ViewController.swift
//  Facebook Redisgn
//
//  Created by Hossam on 9/29/20.
//

import UIKit

class GroupsOptionsController   : BaseCollectionVC {

    fileprivate let cellId="cellId"
    let items:[OptionModel] = [
        .init(title: "Your Groups", iconName: "multiple-users-silhouette"),
        .init(title: "Discover", iconName: "searching-magnifying-glass"),
        .init(title: "Your Groups", iconName: "multiple-users-silhouette"),
        .init(title: "Discover", iconName: "searching-magnifying-glass"),
        .init(title: "Your Groups", iconName: "multiple-users-silhouette"),
        .init(title: "Discover", iconName: "searching-magnifying-glass"),
    ]
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! OptionCell
        let option = items[indexPath.item]
        cell.option=option
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // auto sizing????
        return .init(width: 150, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 20, bottom: 0, right: 0)
    }

    override func setupCollection() {
        
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        collectionView.backgroundColor = .white
        collectionView.register(OptionCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.showsHorizontalScrollIndicator=false
    }
}

