//
//  06AccuracyOTPViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 11/07/2021.
//

import UIKit

class _6AccuracyOTPViewController: UIViewController {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        button.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        button.setTitle("Tiếp tục", for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(goToHomePageVC), for: .touchUpInside)
        return button
    }()
    
    let  stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let OTP1TextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.opacity = 1
        textField.layer.cornerRadius = 8
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        return textField
    }()
    
    let OTP2TextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.opacity = 1
        textField.layer.cornerRadius = 8
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        return textField
    }()
    
    let OTP3TextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.opacity = 1
        textField.layer.cornerRadius = 8
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        return textField
    }()

    let OTP4TextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.opacity = 1
        textField.layer.cornerRadius = 8
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        return textField
    }()
    
    let OTPLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nhập mã OTP"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    let noteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lenda đã gửi mã OTP về SĐT của bạn rồi đó."
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let sentToLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        // setup register lable
        sentToLabel.numberOfLines = 0
        var textArray = [String]()
        var fontArray = [UIFont]()
        var colorArray = [UIColor]()
        
        textArray.append("Bạn không nhân được mã?")
        textArray.append("Gửi lại")
        
        fontArray.append(UIFont.systemFont(ofSize: 16))
        fontArray.append(UIFont.boldSystemFont(ofSize: 16))

        colorArray.append(UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00))
        colorArray.append(UIColor(red: 0.00, green: 0.54, blue: 1.00, alpha: 1.00))
        
        self.sentToLabel.attributedText = getAttributedString(arrayText: textArray, arrayColors: colorArray, arrayFonts: fontArray)
        
        let controller1 = UIViewController()
        controller1.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        let nav1 = UINavigationController(rootViewController: controller1)

    }

    func setupLayout() {
        self.view.addSubview(containerView)
        containerView.addSubview(continueButton)
        containerView.addSubview(stackView)
        stackView.addArrangedSubview(OTP1TextField)
        stackView.addArrangedSubview(OTP2TextField)
        stackView.addArrangedSubview(OTP3TextField)
        stackView.addArrangedSubview(OTP4TextField)
        containerView.addSubview(noteLabel)
        containerView.addSubview(OTPLabel)
        containerView.addSubview(sentToLabel)

        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        continueButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        continueButton.bottomAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 54).isActive = true

        stackView.bottomAnchor.constraint(equalTo: continueButton.topAnchor, constant: -44).isActive = true
        stackView.leadingAnchor.constraint(equalTo: continueButton.leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: continueButton.trailingAnchor, constant: 0).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        OTP1TextField.widthAnchor.constraint(equalToConstant: 64).isActive = true
        OTP2TextField.widthAnchor.constraint(equalToConstant: 64).isActive = true
        OTP3TextField.widthAnchor.constraint(equalToConstant: 64).isActive = true
        OTP4TextField.widthAnchor.constraint(equalToConstant: 64).isActive = true

        noteLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -36).isActive = true
        noteLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 0).isActive = true
        
        OTPLabel.bottomAnchor.constraint(equalTo: noteLabel.topAnchor, constant: -8).isActive = true
        OTPLabel.leadingAnchor.constraint(equalTo: noteLabel.leadingAnchor, constant: 0).isActive = true
        
        sentToLabel.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 36).isActive = true
        sentToLabel.centerXAnchor.constraint(equalTo: continueButton.centerXAnchor, constant: 0).isActive = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func getAttributedString(arrayText:[String]?, arrayColors:[UIColor]?, arrayFonts:[UIFont]?) -> NSMutableAttributedString {
        let finalAttributedString = NSMutableAttributedString()
        for i in 0 ..< (arrayText?.count)! {
            let attributes = [NSAttributedString.Key.foregroundColor: arrayColors?[i] as Any, NSAttributedString.Key.font: arrayFonts?[i] as Any]
            let attributedStr = (NSAttributedString.init(string: arrayText?[i] ?? "", attributes: attributes))
            if i != 0 {
                finalAttributedString.append(NSAttributedString.init(string: " "))
            }
            finalAttributedString.append(attributedStr)
        }
        return finalAttributedString
    }
    
    func setupTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)

        let homePageVC = UINavigationController(rootViewController: _8HomePageViewController()) 
        homePageVC.tabBarItem = UITabBarItem(title: "Trang chủ", image: UIImage(named: "homePage"), tag: 0)

        let investVC = UIViewController()
        investVC.tabBarItem = UITabBarItem(title: "Đầu tư", image: UIImage(named: "invest"), tag: 0)
        
        let plusVC = UIViewController()
        plusVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "plus"), tag: 0)
        
        let historyVC = UINavigationController(rootViewController: _3HistoryLoanAmountViewController())
        historyVC.tabBarItem = UITabBarItem(title: "Lịch sử", image: UIImage(named: "history"), tag: 0)
        
        let optionVC = UINavigationController(rootViewController: _0PersonalPageViewController()) 
        optionVC.tabBarItem = UITabBarItem(title: "Tùy chọn", image: UIImage(named: "option"), tag: 0)
        
        tabBarController.setViewControllers([homePageVC, investVC, plusVC, historyVC, optionVC], animated: true)
        
        return tabBarController
    }
    
    @objc func goToHomePageVC(){
        let tabBarController = setupTabBarController()
        navigationController?.pushViewController(tabBarController, animated: true)
    }

}
