//
//  TipsCollectionViewCell.swift
//  Total Bill
//
//  Created by Mac on 27.11.2022.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    let precentLabel: UILabel = {
        let label = UILabel()
        label.text = "10"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        addSubview(precentLabel)
        layer.cornerRadius = 10
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            precentLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            precentLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        
        ])
    }
}
