//
//  04RegisterViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 11/07/2021.
//

import UIKit
import Firebase
import ProgressHUD
import Toast_Swift

class _4RegisterViewController: UIViewController {
    
    let containerView = UIView().view()
    let registerLabel = UILabel().boldFontSize24Label(text: "Đăng ký")
    let noteLabel = UILabel().systemFontSize15Label(text: "Nhập thông tin để Đăng ký tài khoản Lenda!")
    let registerButton = UIButton().button(text: "Đăng ký")
    let passwordTextField = UITextField().textField(isSecureTextEntry: true)
    let numberPhoneTextField = UITextField().textField(isSecureTextEntry: false)
    let nameTextField = UITextField().textField(isSecureTextEntry: false)
    let nameLabel = UILabel().labelTextField(text: "Họ Tên")
    let numberPhoneLabel = UILabel().labelTextField(text: "Email")
    let passwordLabel = UILabel().labelTextField(text: "Mật khẩu")
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var userInformations: [UserInformation]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        
    }
    
    func setupLayout() {
        // action Button
        registerButton.addTarget(self, action: #selector(goToAccuracyOTPVC), for: .touchUpInside)
        
        //setup Textfield
        UITextField().leftTextField(nameTextField, "name")
        UITextField().leftTextField(numberPhoneTextField, "numberPhone")
        UITextField().leftTextField(passwordTextField, "password")
        UITextField().rightTextField(passwordTextField, "eye")
        
        // setup register lable
        loginLabel.numberOfLines = 0
        var textArray = [String]()
        var fontArray = [UIFont]()
        var colorArray = [UIColor]()
        
        textArray.append("Bạn đã có tài khoản?")
        textArray.append("Đăng nhập")
        
        fontArray.append(UIFont.systemFont(ofSize: 16))
        fontArray.append(UIFont.boldSystemFont(ofSize: 16))
        
        colorArray.append(UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00))
        colorArray.append(UIColor(red: 0.00, green: 0.54, blue: 1.00, alpha: 1.00))
        
        self.loginLabel.attributedText = getAttributedString(arrayText: textArray, arrayColors: colorArray, arrayFonts: fontArray)
        
        self.loginLabel.isUserInteractionEnabled = true
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(goBackLoginVC))
        tapgesture.numberOfTapsRequired = 1
        self.loginLabel.addGestureRecognizer(tapgesture)
        
        self.view.addSubview(containerView)
        containerView.addSubview(numberPhoneTextField)
        numberPhoneTextField.addSubview(numberPhoneLabel)
        containerView.addSubview(nameTextField)
        nameTextField.addSubview(nameLabel)
        containerView.addSubview(noteLabel)
        containerView.addSubview(registerLabel)
        containerView.addSubview(passwordTextField)
        passwordTextField.addSubview(passwordLabel)
        containerView.addSubview(registerButton)
        containerView.addSubview(loginLabel)
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        numberPhoneTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        numberPhoneTextField.bottomAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -16).isActive = true
        numberPhoneTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24).isActive = true
        numberPhoneTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        numberPhoneLabel.topAnchor.constraint(equalTo: numberPhoneTextField.topAnchor, constant: 9).isActive = true
        numberPhoneLabel.leadingAnchor.constraint(equalTo: numberPhoneTextField.leadingAnchor, constant: 62).isActive = true
        
        nameTextField.centerXAnchor.constraint(equalTo: numberPhoneTextField.centerXAnchor, constant: 0).isActive = true
        nameTextField.bottomAnchor.constraint(equalTo: numberPhoneTextField.topAnchor, constant: -24).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: numberPhoneTextField.leadingAnchor, constant: 0).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: numberPhoneTextField.heightAnchor, multiplier: 1).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: nameTextField.topAnchor, constant: 9).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor, constant: 62).isActive = true
        
        noteLabel.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor, constant: 0).isActive = true
        noteLabel.bottomAnchor.constraint(equalTo: nameTextField.topAnchor, constant: -36).isActive = true
        
        registerLabel.leadingAnchor.constraint(equalTo: noteLabel.leadingAnchor, constant: 0).isActive = true
        registerLabel.bottomAnchor.constraint(equalTo: noteLabel.topAnchor, constant: -8).isActive = true
        
        passwordTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: numberPhoneTextField.bottomAnchor, constant: 24).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: numberPhoneTextField.leadingAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 9).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 62).isActive = true
        
        registerButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor, constant: 0).isActive = true
        registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 44).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 0).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
        loginLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 36).isActive = true
        loginLabel.centerXAnchor.constraint(equalTo: registerButton.centerXAnchor, constant: 0).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    @objc func goToAccuracyOTPVC(){
        if numberPhoneTextField.text! == "" || passwordTextField.text! == "" || nameTextField.text == "" {
            self.view.makeToast("Vui lòng nhập đủ thông tin!")
        } else if passwordTextField.text!.count < 6 {
            self.view.makeToast("Mật khẩu ít nhất có 6 ký tự!")
        } else {
            ProgressHUD.show()
            Auth.auth().createUser(withEmail: numberPhoneTextField.text!, password: passwordTextField.text!) { authResult, error in
                if error == nil {
                    for item in self.navigationController!.viewControllers {
                        if let loginVC = item as? _3LoginViewController {
                            self.navigationController?.popToViewController(loginVC, animated: true)
                        }
                    }
                    self.saveDataUserInformation()
                } else {
                    self.view.makeToast("Email không đúng định dạng!")
                }
                ProgressHUD.dismiss()
            }
        }
    }
    
    func saveDataUserInformation() {
        let userData = UserInformation()
        userData.id = UUID().uuidString
        userData.email = numberPhoneTextField.text!
        userData.name = nameTextField.text!
        
        guard let user = Auth.auth().currentUser else {return}
        let dataBase = Firestore.firestore()
        let userCollection = dataBase.collection("User")
        let userDocument = userCollection.document(user.uid)
        let userInformationCollection = userDocument.collection("UserInformation")
        let userInformationDocument = userInformationCollection.document(userData.id)
        userInformationDocument.setData(["UserName": userData.name, "UserEmail": userData.email])
    }
    
    func addUserName() {
        guard let user = Auth.auth().currentUser else {return}
        let db = Firestore.firestore()
        let collection = db.collection("User")
        let document = collection.document(user.uid)
        document.setData(["UserName": nameTextField.text ?? "", "Email": user.email ?? ""])
    }
    
    @objc func goBackLoginVC(_ gesture: UITapGestureRecognizer) {
        guard let text = self.loginLabel.text else { return }
        let conditionsRange = (text as NSString).range(of: "Đăng nhập")
        
        if gesture.didTapAttributedTextInLoginLabel(label: self.loginLabel, inRange: conditionsRange) {
            for item in navigationController!.viewControllers {
                if let loginVC = item as? _3LoginViewController {
                    navigationController?.popToViewController(loginVC, animated: true)
                }
            }
        }
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
    
    
}

extension UITapGestureRecognizer {
    func didTapAttributedTextInLoginLabel(label: UILabel, inRange targetRange: NSRange) -> Bool {
        let layoutManager = NSLayoutManager()
        let textContainer = NSTextContainer(size: CGSize.zero)
        let textStorage = NSTextStorage(attributedString: label.attributedText!)
        
        layoutManager.addTextContainer(textContainer)
        textStorage.addLayoutManager(layoutManager)
        
        textContainer.lineFragmentPadding = 0.0
        textContainer.lineBreakMode = NSLineBreakMode.byWordWrapping
        textContainer.maximumNumberOfLines = label.numberOfLines
        let labelSize = label.bounds.size
        textContainer.size = labelSize
        
        let locationOfTouchInLabel = self.location(in: label)
        let textBoundingBox = layoutManager.usedRect(for: textContainer)
        let textContainerOffset = CGPoint(x: (labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x,
                                          y: (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y);
        let locationOfTouchInTextContainer = CGPoint(x: locationOfTouchInLabel.x - textContainerOffset.x,
                                                     y: locationOfTouchInLabel.y - textContainerOffset.y);
        let indexOfCharacter = layoutManager.characterIndex(for: locationOfTouchInTextContainer, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
        
        return NSLocationInRange(indexOfCharacter, targetRange)
    }
    
}
