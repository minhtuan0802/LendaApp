//
//  15InstructionsViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 18/07/2021.
//

import UIKit

class _5InstructionsViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(_5InstructionsTableViewCell.self, forCellReuseIdentifier: "_5InstructionsTableViewCell")
        return tableView
    }()
    
    let instructionLabel = ["Hướng dẫn sử dụng tính năng A", "Hướng dẫn sử dụng tính năng B", "Hướng dẫn sử dụng tính năng C", "Hướng dẫn sử dụng tính năng D"]
    let contentLabel = ["Quý khách vui lòng đọc kỹ và xác nhận các điều khoản sử dụng phương thức xác thực Soft OTP trong ứng dụng Seamobile App của Ngân hàng TMCP Đông Nam Á (SeABank). Việc sử dụng Soft OTP sẽ được xem là Quý khách đã đồng ý với tất cả những điều khoản và điều kiện sử dụng bên dưới. Vui lòng lưu ý rằng các điều khoản sử dụng có thể được SeABank điều chỉnh mà không cần báo trước theo quy định từng thời kỳ.", "", "", ""]
    let hideImage = ["showIcon", "hideIcon", "hideIcon", "hideIcon"]
    var isShow: [Bool] = [true, false, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 0.96, green: 0.97, blue: 0.98, alpha: 1.00)
        setupLayout()
        tableView.separatorStyle = .none
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupLayout() {
        view.addSubview(containerView)
        containerView.addSubview(tableView)

        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 6).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

        tableView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 17).isActive = true
        tableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = true
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Hướng dẫn sử dụng"
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "BackIcon"), style: .plain, target: self, action: nil)
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
    }

}

extension _5InstructionsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instructionLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "_5InstructionsTableViewCell", for: indexPath) as! _5InstructionsTableViewCell
        cell.instructionLabel.text = instructionLabel[indexPath.row]
        cell.contentLabel.text = contentLabel[indexPath.row]
        cell.hideImage.image = UIImage(named: hideImage[indexPath.row])
        return cell
    }
    

}
