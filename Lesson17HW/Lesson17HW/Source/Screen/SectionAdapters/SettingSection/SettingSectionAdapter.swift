//
//  SettingSectionAdapter.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class SettingSectionAdapter {
    
    private weak var output: SettingSectionAdapterOutput!
    
    required init(output: SettingSectionAdapterOutput!) {
        self.output = output
    }
}

extension SettingSectionAdapter: SectionAdapterInput {
    
    // registerCells
    func registerCells(in tableView: UITableView) {
        let nib = UINib(nibName: "SettingTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "SettingTableViewCell")
    }
    
    // numberOfRows
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        output.settingItemCount()
    }
    
    // cellForRow
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as? SettingTableViewCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        let model = output.settingItem(at: indexPath)
        cell.setup(with: model)
        
        return cell
    }
    
    
}
