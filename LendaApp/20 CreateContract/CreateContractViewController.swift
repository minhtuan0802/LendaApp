//
//  CreateContractViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 24/09/2021.
//

import UIKit

class CreateContractViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
        return view
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CreateContractUITableViewCell.self, forCellReuseIdentifier: "CreateContractUITableViewCell")
        return tableView
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        button.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        button.setTitle("Tiếp tục", for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
//        button.addTarget(self, action: #selector(goToHomePageVC), for: .touchUpInside)
        return button
    }()

    
    let titleLable = ["Hình thức vay","Số tiền cho vay","Lãi suất","Hạn vay","Hình thức trả nợ"]
    let unitLable = ["","VNĐ","%","Tháng",""]
    let inforPersonLable = ["Họ tên","Số điện thoại","Địa chỉ"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
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
        navigationItem.title = "Tạo hợp đồng mới"
        navigationController?.navigationBar.shadowImage = UIImage()
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
     
    }
    
    func setupLayout() {
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        
        self.view.addSubview(containerView)
        containerView.addSubview(tableView)
        containerView.addSubview(continueButton)
        
        containerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
        tableView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 6).isActive = true
        tableView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        
        continueButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 54).isActive = true

    }

}

extension CreateContractViewController: UITableViewDataSource, UITableViewDelegate {
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
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 6))
            headerView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
            return headerView
        }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return titleLable.count
        } else {
            return inforPersonLable.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68
//        if indexPath.section == 0 && indexPath.row == 5 {
//            return 80
//        } else {
//            return 68
//        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CreateContractUITableViewCell", for: indexPath) as! CreateContractUITableViewCell
        if indexPath.section == 0 {
            cell.titleLabel.text = titleLable[indexPath.row]
            cell.unitLabel.text = unitLable[indexPath.row]
            return cell

        } else {
            cell.titleLabel.text = inforPersonLable[indexPath.row]
            return cell

        }
    }
}
