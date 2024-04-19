//
//  SectionAdapterInput.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

protocol SectionAdapterInput {
    
    // Required func
    func registerCells(in tableView: UITableView)
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell
    
    // Optional func
    func titleForHeader(in section: Int, in tableView: UITableView) -> String?
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView)
}

// MARK: - Default
extension SectionAdapterInput {
    
    func titleForHeader(in section: Int, in tableView: UITableView) -> String? {
        return "Section \(section + 1):"
    }

    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 44
    }
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        // do nothing
    }
}
