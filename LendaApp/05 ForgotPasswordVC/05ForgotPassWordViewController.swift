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
        button.addTarget(self, action: #selector(goToChangePasswordVC), for: .touchUpInside)
        return button
    }()
    
    let numberPhoneTextField: UITextField = {
        let textField =  UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0.84, green: 0.85, blue: 0.86, alpha: 1.00)
        textField.layer.opacity = 1
        textField.layer.cornerRadius = 8
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        textField.contentVerticalAlignment = .bottom
        return textField
    }()
    
    let numberPhoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let forgotPassWordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quên mật khẩu"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    let noteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nhập Email để lấy lại mật khẩu Đăng nhập nhé!"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        
        //setup Textfield
        leftNumberPhone(numberPhoneTextField, "numberPhone")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func setupLayout() {
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
    
    func leftNumberPhone(_ texField: UITextField, _ nameImage: String) {
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
    
    @objc func goToChangePasswordVC(){
        ProgressHUD.show()
        Auth.auth().sendPasswordReset(withEmail: numberPhoneTextField.text!) { err in
            if err == nil {
                print("asdasd")
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
