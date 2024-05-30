//
//  SettingViewCell.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var settingSwitcher: UISwitch!
    
    @IBAction func settingSwitcherAction(_ sender: UISwitch) {
    }
}

extension SettingTableViewCell {
    func setup(with model: SettingCellDisplayModel) {
        titleLabel.text = model.title
        settingSwitcher.isOn = model.isOn
    }
}
