//
//  ProductSectionAdapterOutput.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import Foundation

protocol ProductSectionAdapterOutput: AnyObject {
    
    func productItemCount() -> Int
    func productItem(at indexPath: IndexPath) -> ProductCellDisplayModel
}
