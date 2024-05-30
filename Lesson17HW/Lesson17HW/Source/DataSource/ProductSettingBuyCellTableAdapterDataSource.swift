//
//  ProductSettingBuyCellTableAdapterDataSource.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 22.04.2024.
//

import UIKit

class ProductSettingBuyCellTableAdapterDataSource: NSObject {
    
    var tableAdapter: TableViewAdapterInput!
    
    var settingModels: [SettingCellDisplayModel] = []
    var productModels: [ProductCellDisplayModel] = []
    var buyProductModels: [BuyProductCellDisplayModel] = []
}
    
// MARK: - TableAdapterDataSourceOutput
extension ProductSettingBuyCellTableAdapterDataSource: TableAdapterDataSourceOutput {
    
    func loadData() {
        settingModels = DataLoader().getSettingData()
        productModels = DataLoader().getProductData()
        buyProductModels = DataLoader().getBuyProductData()
    }
    
    func setupSectionAdapters() -> TableViewAdapterInput {
        
        let settingSection = SettingSectionAdapter(output: self)
        let productSection = ProductSectionAdapter(output: self)
        let buyProductSection = BuyProductSectionAdapter(output: self)
        
        let adapter = TableViewAdapter()
        adapter.sections = [
            productSection,
            settingSection,
            buyProductSection
        ]
        
        tableAdapter = adapter
        return tableAdapter
    }
}

// MARK: - ProductSectionAdapterOutput
extension ProductSettingBuyCellTableAdapterDataSource: ProductSectionAdapterOutput {

    func productItemCount() -> Int {
        productModels.count
    }
    
    func productItem(at indexPath: IndexPath) -> ProductCellDisplayModel {
        return productModels[indexPath.row]
    }
}

// MARK: - SettingSectionAdapterOutput
extension ProductSettingBuyCellTableAdapterDataSource: SettingSectionAdapterOutput {

    func settingItemCount() -> Int {
        settingModels.count
    }
    
    func settingItem(at indexPath: IndexPath) -> SettingCellDisplayModel {
        return settingModels[indexPath.row]
    }
}

// MARK: - BuyProductSectionAdapterOutput
extension ProductSettingBuyCellTableAdapterDataSource: BuyProductSectionAdapterOutput {

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


