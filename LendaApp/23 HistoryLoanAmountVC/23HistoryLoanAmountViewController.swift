//
//  23HistoryLoanAmountViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 21/07/2021.
//

import UIKit

class _3HistoryLoanAmountViewController: UIViewController {
    
    let containerView = UIView().view()

    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        view.layer.cornerRadius = 8
        view.layer.shadowRadius = 8
        view.layer.shadowColor = CGColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.08)
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 12, height: 24)
        return view
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Trả góp thanh toán 6 tháng"
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
        label.text = "Số tiền cho vay"
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
    
    let separation2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    let noNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Yêu cầu vay số: Lenda2206"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let copyImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "copyIcon")
        return image
    }()

    let copyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sao chép"
        label.textColor = UIColor(red: 0.20, green: 0.66, blue: 0.99, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let detailsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Chi tiết"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let callView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        view.layer.cornerRadius = 8
        return view
    }()
    
    let callLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Gọi điện"
        label.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let callImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "callIcon")
        return image
    }()
    
    let messageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.82, green: 0.82, blue: 0.82, alpha: 1.00)
        view.layer.cornerRadius = 8
        return view
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nhắn tin"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let messageImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "messageIcon")
        return image
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(_3HistoryLoanAmountTableViewCell.self, forCellReuseIdentifier: "_3HistoryLoanAmountTableViewCell")
        return tableView
    }()
    
    let dateLabel = ["14/10/2020", "14/09/2020", "14/08/2020", "14/07/2020", "13/07/2020", "11/07/2020"]
    let contentlabel = ["Chưa đến hạn", "Sắp đến hạn", "Đã thanh toán", "Đã giải ngân", "Đã duyệt", "Yêu cầu vay"]
    let dateColor = [UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00), UIColor(red: 0.99, green: 0.31, blue: 0.30, alpha: 1.00), UIColor(red: 0.15, green: 0.68, blue: 0.38, alpha: 1.00), UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00), UIColor(red: 0.15, green: 0.68, blue: 0.38, alpha: 1.00),  UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00) ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setuplayout()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = false
        tabBarController?.tabBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = false
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationController?.navigationBar.isTranslucent = false
        tabBarController?.tabBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.title = "Lịch sử khoản vay"

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance

        
    }

    func setuplayout() {
        view.addSubview(containerView)
        containerView.addSubview(contentView)
        contentView.addSubview(statusLabel)
        contentView.addSubview(approveButton)
        contentView.addSubview(separation)
        contentView.addSubview(moneyLabel)
        contentView.addSubview(moneyNumberLabel)
        contentView.addSubview(gainsLabel)
        contentView.addSubview(gainsNumberLabel)
        contentView.addSubview(separation2)
        contentView.addSubview(noNumberLabel)
        contentView.addSubview(copyImage)
        contentView.addSubview(copyLabel)
        containerView.addSubview(detailsLabel)
        containerView.addSubview(callView)
        callView.addSubview(callLabel)
        callView.addSubview(callImage)
        containerView.addSubview(messageView)
        messageView.addSubview(messageLabel)
        messageView.addSubview(messageImage)
        containerView.addSubview(tableView)
        
        containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        contentView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        contentView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        contentView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true

        statusLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14).isActive = true
        statusLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true

        approveButton.centerYAnchor.constraint(equalTo: statusLabel.topAnchor, constant: 0).isActive = true
        approveButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        approveButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        approveButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        separation.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 14).isActive = true
        separation.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor, constant: 0).isActive = true
        separation.trailingAnchor.constraint(equalTo: approveButton.trailingAnchor, constant: 0).isActive = true
        separation.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        moneyLabel.topAnchor.constraint(equalTo: separation.bottomAnchor, constant: 12).isActive = true
        moneyLabel.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor, constant: 0).isActive = true

        moneyNumberLabel.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 4).isActive = true
        moneyNumberLabel.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor, constant: 0).isActive = true
        
        gainsLabel.centerYAnchor.constraint(equalTo: moneyLabel.centerYAnchor, constant: 0).isActive = true
        gainsLabel.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0).isActive = true
        
        gainsNumberLabel.centerYAnchor.constraint(equalTo: moneyNumberLabel.centerYAnchor, constant: 0).isActive = true
        gainsNumberLabel.leadingAnchor.constraint(equalTo: gainsLabel.leadingAnchor, constant: 0).isActive = true
        
        separation2.topAnchor.constraint(equalTo: moneyNumberLabel.bottomAnchor, constant: 12).isActive = true
        separation2.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor, constant: 0).isActive = true
        separation2.trailingAnchor.constraint(equalTo: approveButton.trailingAnchor, constant: 0).isActive = true
        separation2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        noNumberLabel.topAnchor.constraint(equalTo: separation2.bottomAnchor, constant: 12).isActive = true
        noNumberLabel.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor, constant: 0).isActive = true
        noNumberLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12).isActive = true
        
        copyLabel.topAnchor.constraint(equalTo: noNumberLabel.topAnchor, constant: 0).isActive = true
        copyLabel.trailingAnchor.constraint(equalTo: approveButton.trailingAnchor, constant: 0).isActive = true
        
        copyImage.centerYAnchor.constraint(equalTo: copyLabel.centerYAnchor, constant: 0).isActive = true
        copyImage.trailingAnchor.constraint(equalTo: copyLabel.leadingAnchor, constant: -8).isActive = true
        copyImage.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        detailsLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 24).isActive = true
        detailsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        detailsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        
        callView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -116).isActive = true
        callView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        callView.heightAnchor.constraint(equalToConstant: 48).isActive = true
        callView.trailingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: -15).isActive = true
        callView.widthAnchor.constraint(equalTo: messageView.widthAnchor, multiplier: 1).isActive = true

        callLabel.centerYAnchor.constraint(equalTo: callView.centerYAnchor, constant: 0).isActive = true
        callLabel.centerXAnchor.constraint(equalTo: callView.centerXAnchor, constant: 5).isActive = true

        callImage.centerYAnchor.constraint(equalTo: callView.centerYAnchor, constant: 0).isActive = true
        callImage.trailingAnchor.constraint(equalTo: callLabel.leadingAnchor, constant: -12).isActive = true
        callImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        callImage.widthAnchor.constraint(equalTo: callImage.heightAnchor, multiplier: 1).isActive = true

        messageView.centerYAnchor.constraint(equalTo: callView.centerYAnchor, constant: 0).isActive = true
        messageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        messageView.heightAnchor.constraint(equalToConstant: 48).isActive = true

        messageLabel.centerYAnchor.constraint(equalTo: messageView.centerYAnchor, constant: 0).isActive = true
        messageLabel.centerXAnchor.constraint(equalTo: messageView.centerXAnchor, constant: 5).isActive = true

        messageImage.centerYAnchor.constraint(equalTo: messageView.centerYAnchor, constant: 0).isActive = true
        messageImage.trailingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -12).isActive = true
        messageImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        messageImage.widthAnchor.constraint(equalTo: messageImage.heightAnchor, multiplier: 1).isActive = true

        tableView.topAnchor.constraint(equalTo: detailsLabel.bottomAnchor, constant: 8).isActive = true
        tableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: callView.topAnchor, constant: -16).isActive = true
    }
    

}
extension _3HistoryLoanAmountViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dateLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "_3HistoryLoanAmountTableViewCell", for: indexPath) as! _3HistoryLoanAmountTableViewCell
        cell.dateLabel.text = dateLabel[indexPath.row]
        cell.contentLabel.text = contentlabel[indexPath.row]
        cell.dateLabel.textColor = dateColor[indexPath.row]
        cell.contentLabel.textColor = dateColor[indexPath.row]

        return cell
    }
}
