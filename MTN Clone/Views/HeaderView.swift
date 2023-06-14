//
//  HeaderView.swift
//  MTN Clone
//
//  Created by Kenneth Kwakye-Gyamfi on 14/06/2023.
//

import UIKit

class HeaderView: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        
        return label
    }()
    
    convenience init(title: String) {
        self.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor(named: "AccentColor")
        
        titleLabel.text = title
        self.addSubview(titleLabel)
    }
    
    override func layoutSubviews() {
        if self.window == nil {
            return
        }
        
        let window = self.window!
        let topPadding = window.safeAreaInsets.top + CGFloat(40)
        
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalTo: window.widthAnchor),
            heightAnchor.constraint(equalToConstant: topPadding),

            titleLabel.centerXAnchor.constraint(equalTo: window.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
        ])
    }
}

