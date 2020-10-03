//
//  NearbyGroupsCollectionVC.swift
//  Facebook Redisgn
//
//  Created by Hossam on 9/29/20.
//

import UIKit

class NearbyGroupsCollectionVC: BaseCollectionVC {
    
    fileprivate let cellId="cellId"
    let items:[GroupModel] = [
        .init(name: "Co-Ed Hikers of Colorado University", imageName: "hike"),
        .init(name: "Other People's Puppies", imageName: "puppy"),
        .init(name: "Secrets to Seasonal Gardening", imageName: "gardening"),
        .init(name: "Food for everyone!", imageName: "food"),
        .init(name: "Other People's Puppies", imageName: "food"),
    ]
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! NearbyCell
        cell.grop = items[indexPath.item]
        return cell
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: (view.frame.width-8*3)/3, height: view.frame.height)
    }
    
    override func setupCollection() {
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        collectionView.backgroundColor = .white
        collectionView.contentInset = .init(top: 8, left: 16, bottom: 8, right: 16)
        collectionView.register(NearbyCell.self, forCellWithReuseIdentifier: cellId)
    }
}
