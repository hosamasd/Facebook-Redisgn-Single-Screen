//
//  BaseCollectionVC.swift
//  Facebook Redisgn
//
//  Created by Hossam on 9/29/20.
//

import UIKit

class BaseCollectionVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let cellId="cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupCollection()
        setupNavigation()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    
    func setupNavigation()  {
        
    }
    
    func setupCollection()  {
        
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
