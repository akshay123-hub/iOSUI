//
//  ViewController.swift
//  Demo
//
//  Created by Akshay on 28/04/21.
//

import UIKit

class ViewController: UIViewController {

    let number_of_item = 2
    @IBOutlet weak var gridCollectionView: UICollectionView!
    
    @IBOutlet weak var topView: UIView!
    
    let textArr = ["DAILY","MATCHES","MANAGER","STATS"]
    
    
    let imgArr = [UIImage(named: "newsPaper"),UIImage(named: "golden cup"),UIImage(named: "golden cup"),UIImage(named: "hat")]
    
    var cellID = "GridCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gridCollectionView.delegate = self
        gridCollectionView.dataSource = self
        topView.layer.borderColor = UIColor.white.cgColor
        topView.layer.cornerRadius = 10
        topView.layer.borderWidth = 1
        let cellNib = UINib(nibName: cellID, bundle: nil)
        gridCollectionView.register(cellNib, forCellWithReuseIdentifier: cellID)
        
        
        
    }


}


//MARK: - Collection View

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return textArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! GridCollectionViewCell
        cell.label.text = textArr[indexPath.row]
        cell.image.image = imgArr[indexPath.row]
        return cell
    }
    
    
}

extension ViewController : UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.gridCollectionView.bounds.width / CGFloat(number_of_item)
        let hight = collectionView.bounds.height / 2
        return CGSize(width: width, height: hight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

