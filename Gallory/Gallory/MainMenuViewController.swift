//
//  ViewController.swift
//  Gallory
//
//  Created by Reza Farahani on 24/1/20.
//  Copyright © 2020 Reza Farahani. All rights reserved.
//

import UIKit

class MainMenuViewController : UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  

    @IBOutlet weak var GalloryCV: UICollectionView!
    var items = ["mohammad","reza","ali","robahemakar"]
    override func viewDidLoad() {
        super.viewDidLoad()
        GalloryCV.delegate = self
        GalloryCV.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = GalloryCV.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? galloryCollectionViewCell
        cell?.MenuItemText.text = items[indexPath.row]
        return cell!
        
    }
}

