//
//  ProductSectionAdapter.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class ProductSectionAdapter {
    
    private weak var output: ProductSectionAdapterOutput!
    
    required init(output: ProductSectionAdapterOutput!) {
        self.output = output
    }
}

extension ProductSectionAdapter: SectionAdapterInput {
    
    // registerCells
    func registerCells(in tableView: UITableView) {
        let nib = UINib(nibName: "ProductTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ProductTableViewCell")
    }
    
    // numberOfRows
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        output.productItemCount()
    }
    
    // cellForRow
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        let model = output.productItem(at: indexPath)
        cell.setup(with: model)
        
        return cell
    }
    
    
}

