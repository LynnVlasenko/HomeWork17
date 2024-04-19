//
//  ProductTableViewCell.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    
}

extension ProductTableViewCell {
    func setup(with model: ProductCellDisplayModel) {
        productImage.image = UIImage(named: model.image)
        productNameLabel.text = model.title
    }
}
