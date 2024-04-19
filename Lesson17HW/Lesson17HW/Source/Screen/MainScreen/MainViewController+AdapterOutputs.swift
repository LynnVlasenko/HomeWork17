//
//  MainViewController+AdapterOutputs.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

// MARK: - ProductSectionAdapterOutput
extension MainViewController: ProductSectionAdapterOutput {

    func productItemCount() -> Int {
        productModels.count
    }
    
    func productItem(at indexPath: IndexPath) -> ProductCellDisplayModel {
        return productModels[indexPath.row]
    }
}

// MARK: - SettingSectionAdapterOutput
extension MainViewController: SettingSectionAdapterOutput {

    func settingItemCount() -> Int {
        settingModels.count
    }
    
    func settingItem(at indexPath: IndexPath) -> SettingCellDisplayModel {
        return settingModels[indexPath.row]
    }
}

// MARK: - BuyProductSectionAdapterOutput
extension MainViewController: BuyProductSectionAdapterOutput {

    func buyProductItemCount() -> Int {
        buyProductModels.count
    }
    
    func buyProductItem(at indexPath: IndexPath) -> BuyProductCellDisplayModel {
        return buyProductModels[indexPath.row]
    }
    
    func buyProductButton(at indexPath: IndexPath) {
        let item = buyProductModels[indexPath.row]
        print("I've bought the product with \(item.title)")
    }
}
