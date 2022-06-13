//
//  checkCollectionViewCell.swift
//  codingFourAppDevelopment
//
//  Created by Amalie Morch on 28/05/2022.
//

import UIKit

class resultSearch: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 20, y: 150, width: 350, height: 21))
            label.font = UIFont(name:"Helvetica Neue", size: 20.0)
            label.textColor = UIColor.darkGray
            label.text = "There is currently no data here."
            self.view.addSubview(label)
    }
}

class SearchViewController: UIViewController {
    let searchController = UISearchController(searchResultsController: resultSearch())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
    }
}
