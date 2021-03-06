

import UIKit
import Firebase
import ProgressHUD

class _3LoginViewController: UIViewController {
    let containerView = UIView().view()
    let loginLabel = UILabel().boldFontSize24Label(text: "Đăng nhập")
    let noteLabel = UILabel().systemFontSize15Label(text: "Nhập Email và mật khẩu để Đăng nhập nhé!")
    let loginButton = UIButton().button(text: "Đăng nhập")
    let passWordTextField = UITextField().textField(isSecureTextEntry: true)
    let numberPhoneTextField = UITextField().textField(isSecureTextEntry: false)
    let passWordLabel = UILabel().labelTextField(text: "Mật khẩu")
    let numberPhoneLabel = UILabel().labelTextField(text: "Email")
    
    let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quên mật khẩu"
        label.textColor = UIColor(red: 0.00, green: 0.54, blue: 1.00, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    let registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    var userInformation = UserInformation()
    
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
        // action button
        loginButton.addTarget(self, action: #selector(goToHomePageVC), for: .touchUpInside)

        //setup Textfield
        UITextField().leftTextField(numberPhoneTextField, "numberPhone")
        UITextField().leftTextField(passWordTextField, "password")
        UITextField().rightTextField(passWordTextField, "eye")
        
        // setup register lable
        registerLabel.numberOfLines = 0
        var textArray = [String]()
        var fontArray = [UIFont]()
        var colorArray = [UIColor]()
        
        textArray.append("Bạn chưa có tài khoản?")
        textArray.append("Đăng ký")
        
        fontArray.append(UIFont.systemFont(ofSize: 16))
        fontArray.append(UIFont.boldSystemFont(ofSize: 16))

        colorArray.append(UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00))
        colorArray.append(UIColor(red: 0.00, green: 0.54, blue: 1.00, alpha: 1.00))
        
        self.registerLabel.attributedText = getAttributedString(arrayText: textArray, arrayColors: colorArray, arrayFonts: fontArray)
        
        self.registerLabel.isUserInteractionEnabled = true
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(goToRegisterVC))
        tapgesture.numberOfTapsRequired = 1
        self.registerLabel.addGestureRecognizer(tapgesture)
        
        // go to forgot password viewcontroller
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToForgotPasswordVC))
        forgotPasswordLabel.addGestureRecognizer(tapGesture)
        forgotPasswordLabel.isUserInteractionEnabled = true
        
        self.view.addSubview(containerView)
        containerView.addSubview(passWordTextField)
        containerView.addSubview(numberPhoneTextField)
        passWordTextField.addSubview(passWordLabel)
        numberPhoneTextField.addSubview(numberPhoneLabel)
        containerView.addSubview(loginLabel)
        containerView.addSubview(noteLabel)
        containerView.addSubview(forgotPasswordLabel)
        containerView.addSubview(loginButton)
        containerView.addSubview(registerLabel)

        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        passWordTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        passWordTextField.bottomAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -80).isActive = true
        passWordTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 24).isActive = true
        passWordTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        passWordLabel.topAnchor.constraint(equalTo: passWordTextField.topAnchor, constant: 9).isActive = true
        passWordLabel.leadingAnchor.constraint(equalTo: passWordTextField.leadingAnchor, constant: 62).isActive = true

        numberPhoneTextField.centerXAnchor.constraint(equalTo: passWordTextField.centerXAnchor, constant: 0).isActive = true
        numberPhoneTextField.bottomAnchor.constraint(equalTo: passWordTextField.topAnchor, constant: -24).isActive = true
        numberPhoneTextField.leadingAnchor.constraint(equalTo: passWordTextField.leadingAnchor, constant: 0).isActive = true
        numberPhoneTextField.heightAnchor.constraint(equalTo: passWordTextField.heightAnchor, multiplier: 1).isActive = true
        
        numberPhoneLabel.topAnchor.constraint(equalTo: numberPhoneTextField.topAnchor, constant: 9).isActive = true
        numberPhoneLabel.leadingAnchor.constraint(equalTo: numberPhoneTextField.leadingAnchor, constant: 62).isActive = true
        
        noteLabel.leadingAnchor.constraint(equalTo: numberPhoneTextField.leadingAnchor, constant: 0).isActive = true
        noteLabel.bottomAnchor.constraint(equalTo: numberPhoneTextField.topAnchor, constant: -36).isActive = true
        
        loginLabel.leadingAnchor.constraint(equalTo: noteLabel.leadingAnchor, constant: 0).isActive = true
        loginLabel.bottomAnchor.constraint(equalTo: noteLabel.topAnchor, constant: -8).isActive = true
        
        forgotPasswordLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        forgotPasswordLabel.topAnchor.constraint(equalTo: passWordTextField.bottomAnchor, constant: 24).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: passWordTextField.centerXAnchor, constant: 0).isActive = true
        loginButton.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 42).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: passWordTextField.leadingAnchor, constant: 0).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
        registerLabel.centerXAnchor.constraint(equalTo: loginButton.centerXAnchor, constant: 0).isActive = true
        registerLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 36).isActive = true
    }
    
    @objc func goToRegisterVC(_ gesture: UITapGestureRecognizer) {
        guard let text = self.registerLabel.text else { return }
        let conditionsRange = (text as NSString).range(of: "Đăng ký")
        
        if gesture.didTapAttributedTextInLabel(label: self.registerLabel, inRange: conditionsRange) {
            let registerVC = _4RegisterViewController()
            navigationController?.pushViewController(registerVC, animated: true)
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
    
    @objc func goToForgotPasswordVC(){
        let forgotPassWordVC = _5ForgotPassWordViewController()
        navigationController?.pushViewController(forgotPassWordVC, animated: true)
    }
    
    func setupTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        tabBarController.tabBar.barTintColor = .white

        let homePage = _8HomePageViewController()
        let homePageVC = UINavigationController(rootViewController: homePage)
        homePage.tabBarItem = UITabBarItem(title: "Trang chủ", image: UIImage(named: "homePage"), tag: 0)

        let invest = CreateContractViewController()
        let investVC = UINavigationController(rootViewController: invest)
        invest.tabBarItem = UITabBarItem(title: "Đầu tư", image: UIImage(named: "invest"), tag: 0)
        
        let history = TimeEvictionViewController()
        let historyVC = UINavigationController(rootViewController: history)
        history.tabBarItem = UITabBarItem(title: "Lịch sử", image: UIImage(named: "history"), tag: 0)
        
        let option = _0PersonalPageViewController()
        let optionVC = UINavigationController(rootViewController: option)
        option.userInformation = userInformation
        option.tabBarItem = UITabBarItem(title: "Tùy chọn", image: UIImage(named: "option"), tag: 0)
        
        tabBarController.setViewControllers([homePageVC, investVC, historyVC, optionVC], animated: true)
        
        return tabBarController
    }
    
    @objc func goToHomePageVC(){
        if numberPhoneTextField.text! == "" || passWordTextField.text! == "" {
            self.view.makeToast("Vui lòng nhập đủ thông tin!")
        } else if passWordTextField.text!.count < 6 {
            self.view.makeToast("Mật khẩu ít nhất có 6 ký tự!")
        } else {
            ProgressHUD.show()
            Auth.auth().signIn(withEmail: numberPhoneTextField.text!, password: passWordTextField.text!) { authDataResult, error in
                if authDataResult != nil {
                    let tabBarController = self.setupTabBarController()
                    self.navigationController?.pushViewController(tabBarController, animated: true)
                } else {
                    self.view.makeToast("Tài khoản không hợp lệ!")
                }
                ProgressHUD.dismiss()
                guard let user = Auth.auth().currentUser else {return}
                let db = Firestore.firestore()
                let userCollection = db.collection("User")
                let userDocument = userCollection.document(user.uid)
                let userInformationCollection = userDocument.collection("UserInformation")

                userInformationCollection.getDocuments { [self] query, err in
                    if err != nil {return}
                    for i in query!.documents {
                        self.userInformation.name = i.get("UserName") as? String ?? ""
                        self.userInformation.email = i.get("UserEmail") as? String ?? ""
                    }
                }
            }
        }
        
    }
    
    @objc func goToAccuracyOTPVC(){
        let tabBarController = setupTabBarController()
        navigationController?.pushViewController(tabBarController, animated: true)
    }
}

extension UITapGestureRecognizer {
    
    func didTapAttributedTextInLabel(label: UILabel, inRange targetRange: NSRange) -> Bool {
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
