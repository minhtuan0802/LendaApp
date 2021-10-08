//
//  UIView.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 07/10/2021.
//

import Foundation
import UIKit

extension UIView {
    func view() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }

}
