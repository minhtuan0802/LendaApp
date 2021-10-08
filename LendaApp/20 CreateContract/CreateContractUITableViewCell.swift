//
//  CreateContractUITableViewCell.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 24/09/2021.
//

import UIKit

protocol CellCreateContractDelegate: AnyObject {
    func createContractTextField(value: String, index :Int)

}

class CreateContractUITableViewCell: UITableViewCell, UITextFieldDelegate {
    
    let containerView = UIView().view()

    let textField: UITextField = {
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
    
    var delegate: CellCreateContractDelegate?
    var index = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setupLayout()
        textField.delegate = self
    }
    
    func setupLayout() {
        self.addSubview(containerView)
        containerView.addSubview(textField)
        textField.addSubview(titleLabel)
        textField.addSubview(unitLabel)
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        textField.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 6).isActive = true
        textField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -6).isActive = true
        textField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        textField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: textField.topAnchor, constant: 9).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: textField.leadingAnchor, constant: 16).isActive = true
        
        unitLabel.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: -8).isActive = true
        unitLabel.trailingAnchor.constraint(equalTo: textField.trailingAnchor, constant: -16).isActive = true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        delegate?.createContractTextField(value: textField.text ?? "", index: self.index)
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        delegate?.createContractTextField(value: textField.text ?? "", index: self.index)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }

}

