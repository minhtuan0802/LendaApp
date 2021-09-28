//
//  09InvestmentDetailsViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 16/07/2021.
//

import UIKit

class _9InvestmentDetailsViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Trạng thái đơn vay"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let approveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.15, green: 0.68, blue: 0.38, alpha: 1.00)
        button.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        button.setTitle("Đã duyệt", for: .normal)
        button.layer.cornerRadius = 4
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        return button
    }()

    let separation: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    let moneyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Số tiền vay"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let moneyNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "20,000,000 VND"
        label.textColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let remainingMoneyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Số tiền gốc còn lại"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let insurranceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Phí bảo hiểm"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let remainingMoneyIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "termIcon")
        return image
    }()
    
    let insurranceIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "formalityIcon")
        return image
    }()
    
    let gainsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lợi nhuận"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let gainsNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "18%/năm"
        label.textColor = UIColor(red: 0.20, green: 0.66, blue: 0.99, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let remainingMoneyNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4,200,000 VND"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let insurranceNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "192,000 VND"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let separation2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    let iconStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let termIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "termIcon")
        return image
    }()
    
    let formalityIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "formalityIcon")
        return image
    }()
    
    let paymentIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "formalityIcon")
        return image
    }()
    
    let addressIcon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "addressIcon")
        return image
    }()
    
    let labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let termLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hạn vay"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let formalityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hình thức vay"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let paymentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hình thức trả nợ"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let addressLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Địa chỉ"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let valueStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 8
        return stackView
    }()
    
    let term: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10 tháng"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let formality: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cầm ô tô ngân hàng"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let payment: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dư nợ giảm dần"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let address: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "P. Trúc Bạch, Q. Ba Đình, TP Hà Nội"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        self.view.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 1.00)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Chi tiết khoản đầu tư"
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "BackIcon"), style: .plain, target: self, action: nil)
    }
    
    func setupLayout() {
        self.view.addSubview(containerView)
        containerView.addSubview(statusLabel)
        containerView.addSubview(approveButton)
        containerView.addSubview(separation)
        containerView.addSubview(moneyLabel)
        containerView.addSubview(moneyNumberLabel)
        containerView.addSubview(remainingMoneyIcon)
        containerView.addSubview(remainingMoneyLabel)
        containerView.addSubview(insurranceIcon)
        containerView.addSubview(insurranceLabel)
        containerView.addSubview(gainsLabel)
        containerView.addSubview(gainsNumberLabel)
        containerView.addSubview(remainingMoneyNumber)
        containerView.addSubview(insurranceNumber)
        containerView.addSubview(separation2)
        containerView.addSubview(iconStackView)
        iconStackView.addArrangedSubview(termIcon)
        iconStackView.addArrangedSubview(formalityIcon)
        iconStackView.addArrangedSubview(paymentIcon)
        iconStackView.addArrangedSubview(addressIcon)
        containerView.addSubview(labelStackView)
        labelStackView.addArrangedSubview(termLabel)
        labelStackView.addArrangedSubview(formalityLabel)
        labelStackView.addArrangedSubview(paymentLabel)
        labelStackView.addArrangedSubview(addressLabel)
        containerView.addSubview(valueStackView)
        valueStackView.addArrangedSubview(term)
        valueStackView.addArrangedSubview(formality)
        valueStackView.addArrangedSubview(payment)
        valueStackView.addArrangedSubview(address)

        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 4).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        statusLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 14).isActive = true
        statusLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true

        approveButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        approveButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        approveButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        approveButton.widthAnchor.constraint(equalToConstant: 79).isActive = true
        
        separation.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 14).isActive = true
        separation.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor, constant: 0).isActive = true
        separation.trailingAnchor.constraint(equalTo: approveButton.trailingAnchor, constant: 0).isActive = true
        separation.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        moneyLabel.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor, constant: 0).isActive = true
        moneyLabel.topAnchor.constraint(equalTo: separation.bottomAnchor, constant: 12).isActive = true
        
        moneyNumberLabel.leadingAnchor.constraint(equalTo: moneyLabel.leadingAnchor, constant: 0).isActive = true
        moneyNumberLabel.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 4).isActive = true
        
        remainingMoneyIcon.topAnchor.constraint(equalTo: moneyNumberLabel.bottomAnchor, constant: 15).isActive = true
        remainingMoneyIcon.leadingAnchor.constraint(equalTo: moneyNumberLabel.leadingAnchor, constant: 0).isActive = true
        remainingMoneyIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        remainingMoneyIcon.widthAnchor.constraint(equalToConstant: 12).isActive = true
        
        remainingMoneyLabel.centerYAnchor.constraint(equalTo: remainingMoneyIcon.centerYAnchor, constant: 0).isActive = true
        remainingMoneyLabel.leadingAnchor.constraint(equalTo: remainingMoneyIcon.trailingAnchor, constant: 7).isActive = true
        
        insurranceIcon.topAnchor.constraint(equalTo: remainingMoneyIcon.bottomAnchor, constant: 11).isActive = true
        insurranceIcon.leadingAnchor.constraint(equalTo: remainingMoneyIcon.leadingAnchor, constant: 0).isActive = true
        insurranceIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        insurranceIcon.widthAnchor.constraint(equalToConstant: 12).isActive = true
        
        insurranceLabel.centerYAnchor.constraint(equalTo: insurranceIcon.centerYAnchor, constant: 0).isActive = true
        insurranceLabel.leadingAnchor.constraint(equalTo: remainingMoneyLabel.leadingAnchor, constant: 0).isActive = true
        
        gainsLabel.topAnchor.constraint(equalTo: moneyLabel.topAnchor, constant: 0).isActive = true
        gainsLabel.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        gainsLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        
        gainsNumberLabel.topAnchor.constraint(equalTo: moneyNumberLabel.topAnchor, constant: 0).isActive = true
        gainsNumberLabel.leadingAnchor.constraint(equalTo: gainsLabel.leadingAnchor, constant: 0).isActive = true
        gainsNumberLabel.trailingAnchor.constraint(equalTo: gainsLabel.trailingAnchor, constant: 0).isActive = true
        
        remainingMoneyNumber.topAnchor.constraint(equalTo: remainingMoneyLabel.topAnchor, constant: 0).isActive = true
        remainingMoneyNumber.leadingAnchor.constraint(equalTo: gainsLabel.leadingAnchor, constant: 0).isActive = true
        remainingMoneyNumber.trailingAnchor.constraint(equalTo: gainsLabel.trailingAnchor, constant: 0).isActive = true
        
        insurranceNumber.topAnchor.constraint(equalTo: insurranceLabel.topAnchor, constant: 0).isActive = true
        insurranceNumber.leadingAnchor.constraint(equalTo: gainsLabel.leadingAnchor, constant: 0).isActive = true
        insurranceNumber.trailingAnchor.constraint(equalTo: gainsLabel.trailingAnchor, constant: 0).isActive = true
        
        separation2.topAnchor.constraint(equalTo: insurranceNumber.bottomAnchor, constant: 12).isActive = true
        separation2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        separation2.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        separation2.heightAnchor.constraint(equalToConstant: 4).isActive = true
        
        iconStackView.topAnchor.constraint(equalTo: separation2.bottomAnchor, constant: 14).isActive = true
        iconStackView.leadingAnchor.constraint(equalTo: moneyNumberLabel.leadingAnchor, constant: 0).isActive = true
        iconStackView.heightAnchor.constraint(equalToConstant: 84).isActive = true
        iconStackView.widthAnchor.constraint(equalToConstant: 12).isActive = true
        
        termIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        formalityIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        paymentIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        addressIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        labelStackView.topAnchor.constraint(equalTo: iconStackView.topAnchor, constant: -2).isActive = true
        labelStackView.bottomAnchor.constraint(equalTo: iconStackView.bottomAnchor, constant: 2).isActive = true
        labelStackView.leadingAnchor.constraint(equalTo: iconStackView.trailingAnchor, constant: 7).isActive = true
        labelStackView.trailingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        
        valueStackView.topAnchor.constraint(equalTo: labelStackView.topAnchor, constant: 0).isActive = true
        valueStackView.leadingAnchor.constraint(equalTo: insurranceNumber.leadingAnchor, constant: 0).isActive = true
        valueStackView.trailingAnchor.constraint(equalTo: insurranceNumber.trailingAnchor, constant: 0).isActive = true
    }

}
