//
//  MainViewController.swift
//  Lesson17HW
//
//  Created by Алина Власенко on 19.04.2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var tableAdapter: TableViewAdapterInput!
    
    var settingModels: [SettingCellDisplayModel] = []
    var productModels: [ProductCellDisplayModel] = []
    var buyProductModels: [BuyProductCellDisplayModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        setupSectionAdapters()
    }
    
    // MARK: - Private
    private func loadData() {
        settingModels = DataLoader().getSettingData()
        productModels = DataLoader().getProductData()
        buyProductModels = DataLoader().getBuyProductData()
    }
    
    private func setupSectionAdapters() {
        
        let settingSection = SettingSectionAdapter(output: self)
        let productSection = ProductSectionAdapter(output: self)
        let buyProductSection = BuyProductSectionAdapter(output: self)
        
        let adapter = TableViewAdapter()
        adapter.sections = [
            productSection,
            settingSection,
            buyProductSection
        ]
        
        tableAdapter = adapter
        tableAdapter.setup(with: tableView)
    }
}
