//
//  GridCollectionViewCell.swift
//  Demo
//
//  Created by Akshay on 28/04/21.
//

import UIKit

class GridCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var cView: UIView!
    @IBOutlet weak var c2View: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        cView.layer.cornerRadius = 20
        c2View.layer.cornerRadius = 20
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 20)
        c2View.layer.backgroundColor = CGColor.init(red: 1, green: 0, blue: 0, alpha: 1)
    }

}
