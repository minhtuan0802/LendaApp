//
//  01SplashViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 10/07/2021.
//

import UIKit

class _1SplashViewController: UIViewController {
    var timer: Timer!
    let containerView = UIView().view()
    
    let lendaImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Mask Group 2")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let copyrightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Copyright © 2019 Lenda. All rights reserved."
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    let secureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "100% An toán và Bảo mật"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let secureImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Secure Icon")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        setupLayout()
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(runSplash), userInfo: nil, repeats: true)
    }

    func setupLayout() {
        self.view.addSubview(containerView)
        containerView.addSubview(lendaImage)
        containerView.addSubview(copyrightLabel)
        containerView.addSubview(secureLabel)
        containerView.addSubview(secureImage)
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        lendaImage.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        lendaImage.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -90).isActive = true
        lendaImage.widthAnchor.constraint(equalToConstant: 240).isActive = true

        copyrightLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -55).isActive = true
        
        secureLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 10).isActive = true
        secureLabel.bottomAnchor.constraint(equalTo: copyrightLabel.topAnchor, constant: -40).isActive = true
        
        secureImage.centerYAnchor.constraint(equalTo: secureLabel.centerYAnchor, constant: 0).isActive = true
        secureImage.trailingAnchor.constraint(equalTo: secureLabel.leadingAnchor, constant: -10).isActive = true
        secureImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    @objc func runSplash() {
        let wellcomeVC = _2WellcomeViewController()
        navigationController?.pushViewController(wellcomeVC, animated: true)
        timer.invalidate()
    }

}
