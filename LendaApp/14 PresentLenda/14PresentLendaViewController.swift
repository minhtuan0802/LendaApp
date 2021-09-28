//
//  14PresentLendaViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 17/07/2021.
//

import UIKit

class _4PresentLendaViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 0.96, green: 0.97, blue: 0.98, alpha: 1.00)
        setupLayout()
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
        navigationItem.title = "Giới thiệu về Lenda"
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
        self.view.addSubview(containerView)
        containerView.addSubview(provisoLabel)
        containerView.addSubview(provisoContentLabel)
        containerView.addSubview(provisoFirstLabel)
        containerView.addSubview(provisoFirstContentLabel)
        containerView.addSubview(softOTPLabel)

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

    }

}
