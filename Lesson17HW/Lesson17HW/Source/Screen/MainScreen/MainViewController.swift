//
//  MainViewController.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var delegate: TableAdapterDataSourceOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = ProductSettingBuyCellTableAdapterDataSource()
        
        delegate.loadData()
        delegate.setupSectionAdapters().setup(with: tableView)
    }
}
