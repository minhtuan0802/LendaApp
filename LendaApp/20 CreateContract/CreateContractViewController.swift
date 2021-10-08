//
//  CreateContractViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 24/09/2021.
//

import UIKit
import Firebase
import ProgressHUD

class CreateContractViewController: UIViewController {
    
    let containerView = UIView().view()
    
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
        button.addTarget(self, action: #selector(uploadValueToTheFirebase), for: .touchUpInside)
        return button
    }()

    
    let titleLable = [["Hình thức vay","Số tiền cho vay","Lãi suất","Hạn vay","Hình thức trả nợ"],["Họ tên","Số điện thoại","Địa chỉ"]]
    let unitLable = ["","VNĐ","%","Tháng",""]
    
    var inforContract = UserInformation()
    var arrayValue = ["","","","","","","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        self.view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = false
        tabBarController?.tabBar.barTintColor = .white
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
    
    @objc func uploadValueToTheFirebase() {
        arrayValue.map { value in
            if value == "" {
                self.view.makeToast("Vui lòng nhập đủ thông tin!")
                return
            }
        }
        ProgressHUD.show()
        guard let user = Auth.auth().currentUser else {return}
        let dataBase = Firestore.firestore()
        let userCollection = dataBase.collection("User")
        let userDocument = userCollection.document(user.uid)
        let contractInformationCollection = userDocument.collection("ContractInformation")
        let contractInformationDocument = contractInformationCollection.document(UUID().uuidString)
        contractInformationDocument.setData(["LoanFormat": arrayValue[0],
                                         "LoanAmount": arrayValue[1] + " VNĐ",
                                         "InterestRate": arrayValue[2] + "%/Năm",
                                         "LoanDuration": arrayValue[3] + " Tháng",
                                         "PayFormat": arrayValue[4],
                                         "FullName": arrayValue[5],
                                         "NumberPhone": arrayValue[6],
                                         "Address": arrayValue[7]
                                        ])
        ProgressHUD.dismiss()
        tableView.reloadData()
        self.view.makeToast("Cập nhật thành công")
    }

}

extension CreateContractViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleLable.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {return 0} else { return 6 }
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
        return titleLable[section].count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CreateContractUITableViewCell", for: indexPath) as! CreateContractUITableViewCell
        cell.delegate = self
        cell.titleLabel.text = titleLable[indexPath.section][indexPath.row]
        if indexPath.section == 0 {
            cell.index = indexPath.row
            cell.unitLabel.text = unitLable[indexPath.row]

        } else {
            cell.index = indexPath.row + titleLable[0].count
        }
        cell.textField.text = ""
        return cell
    }
}


extension CreateContractViewController: CellCreateContractDelegate {
    func createContractTextField(value: String, index: Int) {
        self.arrayValue[index] = value
    }
}
