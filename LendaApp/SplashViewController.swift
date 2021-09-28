//
//  SplashViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 10/07/2021.
//

import UIKit

class SplashViewController: UIViewController {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let lendaImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false

        image.image = UIImage(named: "Mask Group 2")
        image.contentMode = .scaleAspectFill
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
    }
    
    func setupLayout() {
        self.view.addSubview(containerView)
        containerView.addSubview(lendaImage)
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        lendaImage.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        lendaImage.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -90).isActive = true
        lendaImage.widthAnchor.constraint(equalToConstant: 240).isActive = true
//        lendaImage.heightAnchor.constraint(equalToConstant: 26).isActive = true

        
        

    }

}
