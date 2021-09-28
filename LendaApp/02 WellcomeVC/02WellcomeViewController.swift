//
//  02WellcomeViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 10/07/2021.
//

import UIKit


class _2WellcomeViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()

    let illusImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Illus - 9")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let lendaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lenda - Uy tín, bảo mật"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    let introduceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "With lots of unique blocks, you can easily build a page without coding. Build your next landing page quickly."
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 3
        return label
    }()
    
    let startButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        button.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        button.setTitle("Bắt đầu ngay!", for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(goToLoginVC), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true

    }
    
    func setupLayout() {
        self.view.addSubview(containerView)
        containerView.addSubview(illusImage)
        containerView.addSubview(lendaLabel)
        containerView.addSubview(introduceLabel)
        containerView.addSubview(startButton)
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        lendaLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        lendaLabel.bottomAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -10).isActive = true
        
        illusImage.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        illusImage.bottomAnchor.constraint(equalTo: lendaLabel.topAnchor, constant: -42).isActive = true
        illusImage.widthAnchor.constraint(equalToConstant: 240).isActive = true
        
        introduceLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        introduceLabel.topAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 10).isActive = true
        introduceLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 36).isActive = true
        
        startButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        startButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -48).isActive = true
        startButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
    }
    
    @objc func goToLoginVC() {
        let loginVC = _3LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
    }

}
