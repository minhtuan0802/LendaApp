//
//  TimeEvictionViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 09/10/2021.
//

import UIKit
import Firebase
import ProgressHUD

class TimeEvictionViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
        return view
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
        tableView.register(TimeEvictionUITableViewCell.self, forCellReuseIdentifier: "TimeEvictionUITableViewCell")
        return tableView
    }()
    
    var contract = UserInformation()
    var arrContract = [[String : String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none

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
        navigationItem.title = "Lịch thu nợ"
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
    }
    
    func setupLayout() {
        self.view.addSubview(containerView)
        containerView.addSubview(tableView)
    
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        tableView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        tableView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
    }
    
    
}

extension TimeEvictionViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "_8HomePageTableViewCell", for: indexPath) as! _8HomePageTableViewCell
        cell.selectionStyle = .none
//        cell.moneyNumberLabel.text = arrContract[indexPath.row]["LoanAmount"]
//        cell.interestRateNumberLabel.text = arrContract[indexPath.row]["InterestRate"]
//        cell.term.text = arrContract[indexPath.row]["LoanDuration"]
//        cell.formality.text = arrContract[indexPath.row]["LoanFormat"]
//        cell.address.text = arrContract[indexPath.row]["Address"]
//        cell.nameLabel.text = arrContract[indexPath.row]["FullName"]
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let investmentDetailsVC = _9InvestmentDetailsViewController()
        investmentDetailsVC.arrayValue = arrContract[indexPath.row]
        navigationController?.pushViewController(investmentDetailsVC, animated: true)

    }
}
