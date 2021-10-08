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
    
    let containerView = UIView().view()
    let changePassWordLabel = UILabel().boldFontSize24Label(text: "Đổi mật khẩu")
    let noteLabel = UILabel().systemFontSize15Label(text: "Nhập mật khẩu Đăng nhập mới của bạn nhé!")
    let saveButton = UIButton().button(text: "Lưu lại")
    let passwordTextField = UITextField().textField(isSecureTextEntry: true)
    let enterThePasswordTextField = UITextField().textField(isSecureTextEntry: true)
    let enterThePasswordLabel = UILabel().labelTextField(text: "Nhập lại mật khẩu mới")
    let passwordLabel = UILabel().labelTextField(text: "Mật khẩu mới")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        tabBarController?.tabBar.isHidden = true
    }
    
    func setupLayout() {
        // action Button
        saveButton.addTarget(self, action: #selector(goBackPersonalPage), for: .touchUpInside)
        
        // setup TextField
        UITextField().leftTextField(enterThePasswordTextField, "password")
        UITextField().rightTextField(enterThePasswordTextField, "eye")
        UITextField().leftTextField(passwordTextField, "password")
        UITextField().rightTextField(passwordTextField, "eye")
        
        // Autolayout
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
