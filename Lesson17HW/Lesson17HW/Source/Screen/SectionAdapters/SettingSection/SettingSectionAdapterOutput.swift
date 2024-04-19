//
//  SettingSectionAdapterOutput.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import Foundation

protocol SettingSectionAdapterOutput: AnyObject {
    
    func settingItemCount() -> Int
    func settingItem(at indexPath: IndexPath) -> SettingCellDisplayModel
}
