//
//  Just4UViewController.swift
//  MTN Clone
//
//  Created by Kenneth Kwakye-Gyamfi on 14/06/2023.
//

import UIKit

class Just4UViewController: UIViewController {

    let header = HeaderView(title: "Just4U")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(header)
    }
}
