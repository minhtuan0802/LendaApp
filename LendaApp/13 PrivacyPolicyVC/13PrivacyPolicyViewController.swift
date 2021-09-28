//
//  13PrivacyPolicyViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 17/07/2021.
//

import UIKit

class _3PrivacyPolicyViewController: UIViewController {
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 100)
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.frame = self.view.bounds
        view.contentSize = contentViewSize
        view.autoresizingMask = .flexibleHeight
        view.showsHorizontalScrollIndicator = true
        view.bounces = true
        return view
    }()

    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        view.frame.size = contentViewSize
        return view
    }()
    
    let provisoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Điều kiện và điều khoản sử dụng phương thức xác thực Soft OTP trên SeAMobile"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    let provisoContentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quý khách vui lòng đọc kỹ và xác nhận các điều khoản sử dụng phương thức xác thực Soft OTP trong ứng dụng Seamobile App của Ngân hàng TMCP Đông Nam Á (SeABank). Việc sử dụng Soft OTP sẽ được xem là Quý khách đã đồng ý với tất cả những điều khoản và điều kiện sử dụng bên dưới. Vui lòng lưu ý rằng các điều khoản sử dụng có thể được SeABank điều chỉnh mà không cần báo trước theo quy định từng thời kỳ."
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    let provisoFirstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Điều 1: Giải thích từ ngữ"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    let provisoFirstContentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "- Phương thức xác thực: là cách thức được SeABank sử dụng để xác thực khách hàng khi thực hiện giao dịch trên các kênh ngân hàng điện tử và các kênh khác theo quy định của SeABank, bao gồm: mật khẩu đăng nhập dịch vụ, sinh trắc học, SMS OTP, Soft OTP. \n - Mật khẩu một lần (OTP – One Time Password): là mật khẩu có giá trị sử dụng một lần và có hiệu lực trong một khoản thời gian nhất định. \n - Phương thức xác thực Soft OTP: là phương thức xác thực trong đó mã OTP được sinh ra bởi ứng dụng được cài đặt trên thiết bị di động của khách hàng (smartphone, ipad…). Phương thức xác thực Soft OTP của SeABank gồm 02 hình thức:"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()

    let softOTPLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "+  Ứng dụng độc lập: Mã OTP được sinh ra thông qua việc KH nhập mã kiểm tra giao dịch vào ứng dụng Soft OTP của SeABank. \n+  Tích hợp vào ứng dụng Seamobile App: hệ thống tự động sinh và điền mã OTP ngay trên màn hình giao dịch."
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    let acceptImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "noAccept")
        image.contentMode = .scaleAspectFill
        return image
    }()

    let acceptLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tôi đã đọc, hiểu rõ và chấp nhận các điều khoản dịch vụ của Lenda"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        return label
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
        button.setTitleColor(UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00), for: .normal)
        button.setTitle("Tiếp tục", for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(goBackHomePage), for: .touchUpInside)
        return button
    }()
    
    var isAccept = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.96, green: 0.97, blue: 0.98, alpha: 1.00)
        setupLayout()

        self.acceptImage.isUserInteractionEnabled = true
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(accept))
        self.acceptImage.addGestureRecognizer(tapgesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = true
        navigationController?.navigationBar.isTranslucent = false
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationItem.title = "Điều khoản bảo mật"
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "BackIcon"), style: .plain, target: self, action: nil)
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
    }
    
    func setupLayout() {

        self.view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(provisoLabel)
        containerView.addSubview(provisoContentLabel)
        containerView.addSubview(provisoFirstLabel)
        containerView.addSubview(provisoFirstContentLabel)
        containerView.addSubview(softOTPLabel)
        containerView.addSubview(acceptImage)
        containerView.addSubview(acceptLabel)
        self.view.addSubview(continueButton)

        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 6).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        provisoLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        provisoLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        provisoLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true

        provisoContentLabel.topAnchor.constraint(equalTo: provisoLabel.bottomAnchor, constant: 12).isActive = true
        provisoContentLabel.centerXAnchor.constraint(equalTo: provisoLabel.centerXAnchor, constant: 0).isActive = true
        provisoContentLabel.leadingAnchor.constraint(equalTo: provisoLabel.leadingAnchor, constant: 0).isActive = true
        
        provisoFirstLabel.topAnchor.constraint(equalTo: provisoContentLabel.bottomAnchor, constant: 16).isActive = true
        provisoFirstLabel.centerXAnchor.constraint(equalTo: provisoLabel.centerXAnchor, constant: 0).isActive = true
        provisoFirstLabel.leadingAnchor.constraint(equalTo: provisoLabel.leadingAnchor, constant: 0).isActive = true
        
        provisoFirstContentLabel.topAnchor.constraint(equalTo: provisoFirstLabel.bottomAnchor, constant: 16).isActive = true
        provisoFirstContentLabel.centerXAnchor.constraint(equalTo: provisoLabel.centerXAnchor, constant: 0).isActive = true
        provisoFirstContentLabel.leadingAnchor.constraint(equalTo: provisoLabel.leadingAnchor, constant: 0).isActive = true
        
        softOTPLabel.topAnchor.constraint(equalTo: provisoFirstContentLabel.bottomAnchor, constant: 16).isActive = true
        softOTPLabel.centerXAnchor.constraint(equalTo: provisoLabel.centerXAnchor, constant: 0).isActive = true
        softOTPLabel.leadingAnchor.constraint(equalTo: provisoLabel.leadingAnchor, constant: 0).isActive = true
        
        acceptImage.topAnchor.constraint(equalTo: softOTPLabel.bottomAnchor, constant: 20).isActive = true
        acceptImage.leadingAnchor.constraint(equalTo: provisoLabel.leadingAnchor, constant: 0).isActive = true
        acceptImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        acceptImage.widthAnchor.constraint(equalTo: acceptImage.heightAnchor, multiplier: 1).isActive = true

        acceptLabel.centerYAnchor.constraint(equalTo: acceptImage.centerYAnchor, constant: 0).isActive = true
        acceptLabel.trailingAnchor.constraint(equalTo: softOTPLabel.trailingAnchor, constant: 0).isActive = true
        acceptLabel.leadingAnchor.constraint(equalTo: acceptImage.trailingAnchor, constant: 8).isActive = true
        
        continueButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: provisoLabel.centerXAnchor, constant: 0).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: provisoLabel.leadingAnchor, constant: 0).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 48).isActive = true

    }
    
    @objc func accept(){
        isAccept = !isAccept
        if isAccept == false {
            acceptImage.image = UIImage(named: "noAccept")
            continueButton.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
            continueButton.setTitleColor(UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00), for: .normal)
        } else {
            acceptImage.image = UIImage(named: "accept")
            continueButton.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
            continueButton.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        }
        
    }
    
    @objc func goBackHomePage(){
        if isAccept == true {
            for item in navigationController!.viewControllers {
                if let homePageVC = item as? _8HomePageViewController {
                    print("aa")
                    navigationController?.popToViewController(homePageVC, animated: true)
                }
            }
        }
    }
}
