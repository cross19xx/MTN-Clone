//
//  BuySendViewController.swift
//  MTN Clone
//
//  Created by Kenneth Kwakye-Gyamfi on 14/06/2023.
//

import UIKit

class BuySendViewController: UIViewController {

    let header = HeaderView(title: "Buy/Send")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(header)
    }
}
