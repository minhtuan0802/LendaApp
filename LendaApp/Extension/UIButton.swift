//
//  UIButton.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 07/10/2021.
//

import Foundation
import UIKit

extension UIButton {
    func button(text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor().buttonColor()
        button.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        button.setTitle(text, for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        return button
    }

}
