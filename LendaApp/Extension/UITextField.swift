//
//  UITextField.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 07/10/2021.
//

import Foundation
import UIKit

extension UITextField {
    func textField(isSecureTextEntry: Bool) -> UITextField {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = isSecureTextEntry
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.cornerRadius = 8
        textField.layer.opacity = 1
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        textField.contentVerticalAlignment = .bottom
        return textField
    }
    
    func leftTextField(_ texField: UITextField, _ nameImage: String) {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 24, height: 24))
        imageView.image = UIImage(named: nameImage)
        imageView.contentMode = .scaleAspectFill
        
        let separationView = UIView(frame: CGRect(x: 56, y: 10, width: 1, height: 36))
        separationView.backgroundColor = UIColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 56, height: 56))
        view.addSubview(imageView)
        view.addSubview(separationView)
        texField.leftViewMode = .always
        texField.leftView = view
        
    }
    
    func rightTextField(_ texField: UITextField, _ nameImage: String) {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 24, height: 24))
        imageView.image = UIImage(named: nameImage)
        imageView.contentMode = .scaleAspectFill
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 56, height: 56))
        view.addSubview(imageView)
        texField.rightViewMode = .always
        texField.rightView = view
    }

}
