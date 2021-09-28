//
//  CreateContractUITableViewCell.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 24/09/2021.
//

import UIKit

class CreateContractUITableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let titleTextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.cornerRadius = 8
        textField.layer.opacity = 1
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        textField.contentVerticalAlignment = .bottom
        return textField
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 3
        return label
    }()
    
    
    let unitLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setupLayout()
    }
    
    func setupLayout() {
        self.addSubview(containerView)
        containerView.addSubview(titleTextField)
        titleTextField.addSubview(titleLabel)
        titleTextField.addSubview(unitLabel)
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        titleTextField.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        titleTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        titleTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        titleTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: titleTextField.topAnchor, constant: 9).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: titleTextField.leadingAnchor, constant: 16).isActive = true
        
        unitLabel.bottomAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: -8).isActive = true
        unitLabel.trailingAnchor.constraint(equalTo: titleTextField.trailingAnchor, constant: -16).isActive = true

    }

}
