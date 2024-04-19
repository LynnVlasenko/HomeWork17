//
//  BuyProductTableViewCell.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class BuyProductTableViewCell: UITableViewCell {
    
    var buyProductButtonComplition: (()->())?
    
    @IBOutlet weak var buyProductImage: UIImageView!
    @IBOutlet weak var contentLabelStackView: UIStackView!
    @IBOutlet weak var buyProductNameLabel: UILabel!
    @IBOutlet weak var buyProductDescriptionLabel: UILabel!
    @IBOutlet weak var buyProductButton: UIButton!
    
    
    @IBAction func buyProductButtonAction(_ sender: UIButton) {
        buyProductButtonComplition?()
    }
}

extension BuyProductTableViewCell {
    func setup(with model: BuyProductCellDisplayModel) {
        buyProductImage.image = UIImage(named: model.image)
        buyProductNameLabel.text = model.title
        buyProductDescriptionLabel.text = model.description
    }
}
