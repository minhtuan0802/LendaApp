//
//  02WellcomeViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 10/07/2021.
//

import UIKit


class _2WellcomeViewController: UIViewController {
    
    let containerView = UIView().view()
    let lendaLabel = UILabel().boldFontSize24Label(text: "Lenda - Uy tín, bảo mật")
    let introduceLabel = UILabel().systemFontSize15Label(text: "With lots of unique blocks, you can easily build a page without coding. Build your next landing page quickly.")
    let startButton = UIButton().button(text: "Bắt đầu ngay!")

    let illusImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Illus - 9")
        image.contentMode = .scaleAspectFill
        return image
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
        startButton.addTarget(self, action: #selector(goToLoginVC), for: .touchUpInside)

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
