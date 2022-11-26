//
//  TotalBillView.swift
//  Total Bill
//
//  Created by Mac on 26.11.2022.
//

import UIKit

class TotalBillView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Общий счёт"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sumTextField: UITextField = {
       let textFiled = UITextField()
        textFiled.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        textFiled.layer.cornerRadius = 10
        textFiled.textColor = .black
        textFiled.font = UIFont(name: "Avenir Next Bold", size: 48)
        textFiled.textAlignment = .center
        textFiled.keyboardType = .numberPad
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
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
        translatesAutoresizingMaskIntoConstraints = false
        
        
        addSubview(titleLabel)
        addSubview(sumTextField)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            sumTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            sumTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            sumTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            sumTextField.heightAnchor.constraint(equalToConstant: 100)
            
        
        ])
    }
}


