//
//  TableViewAdapter.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class TableViewAdapter: NSObject {
    
    var sections: [SectionAdapterInput] = []
    
}

// виконуємо протокол, що витягує таблицю і налаштовуємо її. Делегатом для неї буде цей поточний клас
// MARK: - TableViewAdapterInput
extension TableViewAdapter: TableViewAdapterInput {
    
    func setup(with tableView: UITableView) {
        tableView.dataSource = self
        tableView.delegate = self
        
        sections.forEach {
            $0.registerCells(in: tableView)
        }
    }
}

extension TableViewAdapter: UITableViewDataSource {
    
    // numberOfSections
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?  {
        return sections[section].titleForHeader(in: section, in: tableView)
    }
    
    // numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].numberOfRows(for: section, in: tableView)
    }
    
    // cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return sections[indexPath.section].cellForRow(at: indexPath, in: tableView)
    }
    
    // heightForRowAt
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return sections[indexPath.section].heightForRow(at: indexPath, in: tableView)
    }
}

extension TableViewAdapter: UITableViewDelegate {
    
    // didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sections[indexPath.section].didSelectRow(at: indexPath, in: tableView)
    }
}
