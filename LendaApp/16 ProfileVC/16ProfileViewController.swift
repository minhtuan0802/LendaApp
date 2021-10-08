//
//  16ProfileViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 19/07/2021.
//

import UIKit

class _6ProfileViewController: UIViewController {
    
    let containerView = UIView().view()

    let accuracyView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.15, green: 0.68, blue: 0.38, alpha: 1.00)
        view.layer.cornerRadius = 4
        return view
    }()
    
    let accuracyImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "accuracyIcon")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let accuracyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hồ sơ của bạn đã được xác thực"
        label.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        return label
    }()

    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(_6ProfileTableViewCell.self, forCellReuseIdentifier: "_6ProfileTableViewCell")
        return tableView
    }()
    
    let frontImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "boder")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let frontPlusImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "squarePlus")
        image.contentMode = .scaleAspectFill
        return image
    }()

    
    let frontUploadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Upload"
        label.textColor = UIColor(red: 0.85, green: 0.15, blue: 0.19, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    let frontLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mặt trước CMND/CCCD"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        return label
    }()
    
    let frontCMNDLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mặt trước CMND"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 0
        return label
    }()

    let backsideImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "boder")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let backsidePlusImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "squarePlus")
        image.contentMode = .scaleAspectFill
        return image
    }()

    
    let backsideUploadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Upload"
        label.textColor = UIColor(red: 0.85, green: 0.15, blue: 0.19, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    let backsideLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mặt sau CMND/CCCD"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        return label
    }()
    
    let backsideCMNDLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mặt sau CMND"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 0
        return label
    }()

    
    let contenLabel = ["Họ tên", "Số điện thoại", "Giới tính", "Ngày sinh", "Quê quán", "Thường trú", "Công ty"]
    let valueLabel = ["Nguyễn Hoàng Minh Anh", "0988522939", "Nam", "13/04/1993", "Hoàng Liệt, Hoàng Mai, Hà Nội", "Nguyễn Xiển, Hạ Đình, Thanh Xuân, Hà Nội", "LTS Software Việt Nam"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 1.00)
        
        setupLayout()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = true
        navigationController?.navigationBar.isTranslucent = false
        tabBarController?.tabBar.isTranslucent = true
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Hồ sơ"
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
        containerView.addSubview(accuracyView)
        accuracyView.addSubview(accuracyImage)
        accuracyView.addSubview(accuracyLabel)
        containerView.addSubview(tableView)
        containerView.addSubview(frontImage)
        containerView.addSubview(frontPlusImage)
        containerView.addSubview(frontUploadLabel)
        containerView.addSubview(frontLabel)
        containerView.addSubview(frontCMNDLabel)
        containerView.addSubview(backsideImage)
        containerView.addSubview(backsidePlusImage)
        containerView.addSubview(backsideUploadLabel)
        containerView.addSubview(backsideLabel)
        containerView.addSubview(backsideCMNDLabel)

        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 6).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        accuracyView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        accuracyView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        accuracyView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        accuracyImage.centerYAnchor.constraint(equalTo: accuracyView.centerYAnchor, constant: 0).isActive = true
        accuracyImage.leadingAnchor.constraint(equalTo: accuracyView.leadingAnchor, constant: 12).isActive = true
        accuracyImage.heightAnchor.constraint(equalToConstant: 13).isActive = true
        accuracyImage.widthAnchor.constraint(equalTo: accuracyImage.heightAnchor, multiplier: 1).isActive = true
        
        accuracyLabel.centerYAnchor.constraint(equalTo: accuracyView.centerYAnchor, constant: 0).isActive = true
        accuracyLabel.leadingAnchor.constraint(equalTo: accuracyImage.trailingAnchor, constant: 8).isActive = true
        accuracyLabel.trailingAnchor.constraint(equalTo: accuracyView.trailingAnchor, constant: -12).isActive = true

        tableView.topAnchor.constraint(equalTo: accuracyView.bottomAnchor, constant: 8).isActive = true
        tableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        tableView.heightAnchor.constraint(equalToConstant: 330).isActive = true
        
        frontImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 402).isActive = true
        frontImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        frontImage.heightAnchor.constraint(equalToConstant: 124).isActive = true
        frontImage.widthAnchor.constraint(equalToConstant: 166).isActive = true
        
        frontPlusImage.bottomAnchor.constraint(equalTo: frontImage.centerYAnchor, constant: 0).isActive = true
        frontPlusImage.leadingAnchor.constraint(equalTo: frontImage.leadingAnchor, constant: 42).isActive = true
        frontPlusImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        frontPlusImage.widthAnchor.constraint(equalTo: frontPlusImage.heightAnchor, multiplier: 1).isActive = true
        
        frontUploadLabel.centerYAnchor.constraint(equalTo: frontPlusImage.centerYAnchor, constant: 0).isActive = true
        frontUploadLabel.trailingAnchor.constraint(equalTo: frontImage.trailingAnchor, constant: -42).isActive = true
        
        frontLabel.centerXAnchor.constraint(equalTo: frontImage.centerXAnchor, constant: 0).isActive = true
        frontLabel.topAnchor.constraint(equalTo: frontImage.centerYAnchor, constant: 5).isActive = true
        
        frontCMNDLabel.topAnchor.constraint(equalTo: frontImage.bottomAnchor, constant: 12).isActive = true
        frontCMNDLabel.centerXAnchor.constraint(equalTo: frontImage.centerXAnchor, constant: 0).isActive = true
        
        backsideImage.topAnchor.constraint(equalTo: frontImage.topAnchor, constant: 0).isActive = true
        backsideImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        backsideImage.heightAnchor.constraint(equalToConstant: 124).isActive = true
        backsideImage.widthAnchor.constraint(equalToConstant: 166).isActive = true
        
        backsidePlusImage.bottomAnchor.constraint(equalTo: backsideImage.centerYAnchor, constant: 0).isActive = true
        backsidePlusImage.leadingAnchor.constraint(equalTo: backsideImage.leadingAnchor, constant: 42).isActive = true
        backsidePlusImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        backsidePlusImage.widthAnchor.constraint(equalTo: backsidePlusImage.heightAnchor, multiplier: 1).isActive = true
        
        backsideUploadLabel.centerYAnchor.constraint(equalTo: backsidePlusImage.centerYAnchor, constant: 0).isActive = true
        backsideUploadLabel.trailingAnchor.constraint(equalTo: backsideImage.trailingAnchor, constant: -42).isActive = true
        
        backsideLabel.centerXAnchor.constraint(equalTo: backsideImage.centerXAnchor, constant: 0).isActive = true
        backsideLabel.topAnchor.constraint(equalTo: backsideImage.centerYAnchor, constant: 5).isActive = true
        
        backsideCMNDLabel.topAnchor.constraint(equalTo: backsideImage.bottomAnchor, constant: 12).isActive = true
        backsideCMNDLabel.centerXAnchor.constraint(equalTo: backsideImage.centerXAnchor, constant: 0).isActive = true
    }

}

extension _6ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else {
            return 6
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return contenLabel.count
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "_6ProfileTableViewCell", for: indexPath) as! _6ProfileTableViewCell
        cell.contentLabel.text = contenLabel[indexPath.row]
        cell.valueLabel.text = valueLabel[indexPath.row]
        return cell
    }
    
    
}
