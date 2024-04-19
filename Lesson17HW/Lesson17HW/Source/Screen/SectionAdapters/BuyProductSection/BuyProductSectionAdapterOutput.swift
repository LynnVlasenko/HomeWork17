//
//  BuyProductSectionAdapterOutput.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import Foundation

protocol BuyProductSectionAdapterOutput: AnyObject {
    
    func buyProductItemCount() -> Int
    func buyProductItem(at indexPath: IndexPath) -> BuyProductCellDisplayModel
    func buyProductButton(at indexPath: IndexPath)
}
