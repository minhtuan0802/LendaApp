//
//  07ChangePasswordViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 15/07/2021.
//

import UIKit
import Firebase
import ProgressHUD
import Toast_Swift

class _7ChangePasswordViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let enterThePasswordTextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.cornerRadius = 8
        textField.layer.opacity = 1
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        textField.contentVerticalAlignment = .bottom
        return textField
    }()
    
    let enterThePasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nhập lại mật khẩu mới"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 3
        return label
    }()
    
    let passwordTextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.cornerRadius = 8
        textField.layer.opacity = 1
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        textField.contentVerticalAlignment = .bottom
        return textField
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mật khẩu mới"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 3
        return label
    }()
    
    let changePassWordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Đổi mật khẩu"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    let noteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nhập mật khẩu Đăng nhập mới của bạn nhé!"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        button.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        button.setTitle("Lưu lại", for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(goBackPersonalPage), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        
        leftEnterThePassWord(enterThePasswordTextField, "password")
        rightEnterThePassWord(enterThePasswordTextField, "eye")
        leftPassWord(passwordTextField, "password")
        rightPassWord(passwordTextField, "eye")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        tabBarController?.tabBar.isHidden = true
    }
    
    func setupLayout() {
        self.view.addSubview(containerView)
        containerView.addSubview(enterThePasswordTextField)
        enterThePasswordTextField.addSubview(enterThePasswordLabel)
        containerView.addSubview(passwordTextField)
        passwordTextField.addSubview(passwordLabel)
        containerView.addSubview(noteLabel)
        containerView.addSubview(changePassWordLabel)
        containerView.addSubview(saveButton)
        
        
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        enterThePasswordTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        enterThePasswordTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24).isActive = true
        enterThePasswordTextField.bottomAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        enterThePasswordTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        enterThePasswordLabel.topAnchor.constraint(equalTo: enterThePasswordTextField.topAnchor, constant: 9).isActive = true
        enterThePasswordLabel.leadingAnchor.constraint(equalTo: enterThePasswordTextField.leadingAnchor, constant: 62).isActive = true
        
        passwordTextField.centerXAnchor.constraint(equalTo: enterThePasswordTextField.centerXAnchor, constant: 0).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: enterThePasswordTextField.leadingAnchor, constant: 0).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: enterThePasswordTextField.topAnchor, constant: -24).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: enterThePasswordTextField.heightAnchor, multiplier: 1).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 9).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 62).isActive = true
        
        noteLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 0).isActive = true
        noteLabel.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -36).isActive = true
        
        changePassWordLabel.leadingAnchor.constraint(equalTo: noteLabel.leadingAnchor, constant: 0).isActive = true
        changePassWordLabel.bottomAnchor.constraint(equalTo: noteLabel.topAnchor, constant: -8).isActive = true
        
        saveButton.centerXAnchor.constraint(equalTo: enterThePasswordTextField.centerXAnchor, constant: 0).isActive = true
        saveButton.leadingAnchor.constraint(equalTo: enterThePasswordTextField.leadingAnchor, constant: 0).isActive = true
        saveButton.topAnchor.constraint(equalTo: enterThePasswordTextField.bottomAnchor, constant: 40).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
    }
    
    func leftEnterThePassWord(_ texField: UITextField, _ nameImage: String) {
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
    
    func rightEnterThePassWord(_ texField: UITextField, _ nameImage: String) {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 24, height: 24))
        imageView.image = UIImage(named: nameImage)
        imageView.contentMode = .scaleAspectFill
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 56, height: 56))
        view.addSubview(imageView)
        texField.rightViewMode = .always
        texField.rightView = view
    }
    
    func leftPassWord(_ texField: UITextField, _ nameImage: String) {
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
    
    func rightPassWord(_ texField: UITextField, _ nameImage: String) {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 24, height: 24))
        imageView.image = UIImage(named: nameImage)
        imageView.contentMode = .scaleAspectFill
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 56, height: 56))
        view.addSubview(imageView)
        texField.rightViewMode = .always
        texField.rightView = view
    }
    
    @objc func goBackPersonalPage() {
        if self.passwordTextField.text! != self.enterThePasswordTextField.text! {
            self.view.makeToast("Mật khẩu không trùng nhau!")
        } else {
            ProgressHUD.show()
            Auth.auth().currentUser?.updatePassword(to: passwordTextField.text!, completion: { error in
                if error == nil && self.passwordTextField.text! == self.enterThePasswordTextField.text! {
                    for item in self.navigationController!.viewControllers {
                        if let personalPageVC = item as? _0PersonalPageViewController {
                            self.navigationController?.popToViewController(personalPageVC, animated: true)
                        }
                    }
                } else {
                    self.view.makeToast("Mật khẩu ít nhất có 6 ký tự!")
                }
                ProgressHUD.dismiss()
            })
        }

        
    }
    
}
