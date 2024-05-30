//
//  DataLoader.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import Foundation

class DataLoader {
    
    func getSettingData() -> [SettingCellDisplayModel] {
        
        var models: [SettingCellDisplayModel] = []
        for i in 0 ..< 3 {
            let newModel = SettingCellDisplayModel(
                title: "Settings \(i + 1)",
                isOn: false)
            models.append(newModel)
        }
        return models
    }
    
    func getProductData() -> [ProductCellDisplayModel] {
        
        var models: [ProductCellDisplayModel] = []
        for i in 0 ..< 3 {
            let newModel = ProductCellDisplayModel(
                image: "pcPlaceholder",
                title: "Product Title \(i + 1)")
            models.append(newModel)
        }
        return models
    }
    
    func getBuyProductData() -> [BuyProductCellDisplayModel] {
        
        var models: [BuyProductCellDisplayModel] = []
        for i in 0 ..< 3 {
            let newModel = BuyProductCellDisplayModel(
                image: "pcPlaceholder",
                title: "Product Title \(i + 1)",
                description: "description of poduct")
            models.append(newModel)
        }
        return models
    }
}

