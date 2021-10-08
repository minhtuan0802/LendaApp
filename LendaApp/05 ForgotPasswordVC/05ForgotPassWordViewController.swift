//
//  05ForgotPassWordViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 11/07/2021.
//

import UIKit
import Firebase
import ProgressHUD

class _5ForgotPassWordViewController: UIViewController {
    
    let containerView = UIView().view()
    let forgotPassWordLabel = UILabel().boldFontSize24Label(text: "Quên mật khẩu")
    let noteLabel = UILabel().systemFontSize15Label(text: "Nhập Email để lấy lại mật khẩu Đăng nhập nhé!")
    let continueButton = UIButton().button(text: "Tiếp tục")
    let numberPhoneTextField = UITextField().textField(isSecureTextEntry: false)
    let numberPhoneLabel = UILabel().labelTextField(text: "Email")

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func setupLayout() {
        // action Button
        continueButton.addTarget(self, action: #selector(goToChangePasswordVC), for: .touchUpInside)
        
        //setup Textfield
        UITextField().leftTextField(numberPhoneTextField, "numberPhone")

        self.view.addSubview(containerView)
        containerView.addSubview(continueButton)
        containerView.addSubview(numberPhoneTextField)
        numberPhoneTextField.addSubview(numberPhoneLabel)
        containerView.addSubview(forgotPassWordLabel)
        containerView.addSubview(noteLabel)
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        continueButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        continueButton.bottomAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
        numberPhoneTextField.centerXAnchor.constraint(equalTo: continueButton.centerXAnchor, constant: 0).isActive = true
        numberPhoneTextField.bottomAnchor.constraint(equalTo: continueButton.topAnchor, constant: -44).isActive = true
        numberPhoneTextField.leadingAnchor.constraint(equalTo: continueButton.leadingAnchor, constant: 0).isActive = true
        numberPhoneTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        numberPhoneLabel.topAnchor.constraint(equalTo: numberPhoneTextField.topAnchor, constant: 9).isActive = true
        numberPhoneLabel.leadingAnchor.constraint(equalTo: numberPhoneTextField.leadingAnchor, constant: 62).isActive = true
        
        noteLabel.bottomAnchor.constraint(equalTo: numberPhoneTextField.topAnchor, constant: -36).isActive = true
        noteLabel.leadingAnchor.constraint(equalTo: numberPhoneTextField.leadingAnchor, constant: 0).isActive = true
        
        forgotPassWordLabel.bottomAnchor.constraint(equalTo: noteLabel.topAnchor, constant: -8).isActive = true
        forgotPassWordLabel.leadingAnchor.constraint(equalTo: noteLabel.leadingAnchor, constant: 0).isActive = true
    }
    
    @objc func goToChangePasswordVC(){
        ProgressHUD.show()
        Auth.auth().sendPasswordReset(withEmail: numberPhoneTextField.text!) { err in
            if err == nil {
                for item in self.navigationController!.viewControllers {
                    if let loginVC = item as? _3LoginViewController {
                        self.navigationController?.popToViewController(loginVC, animated: true)
                    }
                }
            } else {
                self.view.makeToast("Email không đúng định dạng!")
            }
            ProgressHUD.dismiss()
        }

    }

}
