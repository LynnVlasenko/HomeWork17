//
//  BuyProductSectionAdapter.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class BuyProductSectionAdapter {
    
    private weak var output: BuyProductSectionAdapterOutput!
    
    required init(output: BuyProductSectionAdapterOutput!) {
        self.output = output
    }
}

extension BuyProductSectionAdapter: SectionAdapterInput {
    
    // registerCells
    func registerCells(in tableView: UITableView) {
        let nib = UINib(nibName: "BuyProductTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "BuyProductTableViewCell")
    }
    
    // numberOfRows
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        output.buyProductItemCount()
    }
    
    // cellForRow
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BuyProductTableViewCell", for: indexPath) as? BuyProductTableViewCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        let model = output.buyProductItem(at: indexPath)
        cell.setup(with: model)
        
        cell.buyProductButtonComplition = { [weak self, indexPath] in
            guard let self = self else { return }
            
            self.output.buyProductButton(at: indexPath)
        }
        
        
        return cell
    }
    
    // heightForRow
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 88
    }
}

