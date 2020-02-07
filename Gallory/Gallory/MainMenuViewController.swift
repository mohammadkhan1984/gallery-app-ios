//
//  ViewController.swift
//  Gallory
//
//  Created by Reza Farahani on 24/1/20.
//  Copyright © 2020 Reza Farahani. All rights reserved.
//

import UIKit

class MainMenuViewController : UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  

    @IBOutlet weak var galleryCV: UICollectionView!
    var items = ["mohammad","reza","ali","robahemakar"]
    override func viewDidLoad() {
        super.viewDidLoad()
        galleryCV.delegate = self
        galleryCV.dataSource = self
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                
        galleryCV.collectionViewLayout = layout
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = galleryCV.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? galloryCollectionViewCell
        cell?.MenuItemText.text = items[indexPath.row]
        return cell!
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let padding: CGFloat =  50
        let collectionViewSize = collectionView.frame.size.width - padding

        return CGSize(width: collectionViewSize/2, height: collectionViewSize/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

