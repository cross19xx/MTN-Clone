//
//  MoreViewController.swift
//  MTN Clone
//
//  Created by Kenneth Kwakye-Gyamfi on 14/06/2023.
//

import UIKit

class MoreViewController: UIViewController {

    let header = HeaderView(title: "Get More")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(header)
    }
}
