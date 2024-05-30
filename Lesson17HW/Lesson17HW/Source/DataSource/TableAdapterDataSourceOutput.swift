//
//  TableAdapterDataSourceOutput.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 22.04.2024.
//

import Foundation

protocol TableAdapterDataSourceOutput {
    
    func loadData()
    func setupSectionAdapters() -> TableViewAdapterInput
}
