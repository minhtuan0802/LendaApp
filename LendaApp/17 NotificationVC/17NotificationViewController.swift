

import UIKit

class _7NotificationViewController: UIViewController {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(_7NotificationTableViewCell.self, forCellReuseIdentifier: "_7NotificationTableViewCell")
        return tableView
    }()
    
    let contentLabel = ["Vui lòng checkout để kết thúc ca làm việc của bạn.", "Lenda thông báo cập nhật hệ thống và bảo trì từ 22:00-24:00 ngày 20/06/2021.", "Thông báo về việc mở rộng mạng lưới kinh doanh năm 2020", "Đã có chủ nhân cho giải thưởng TOP 247 tháng 05/2020", "LendaF - Ra mắt ứng dụng mới kết nối CBNV mọi lúc mọi nơi."]
    
    let dateLabel = ["1h57’ trước", "Hôm qua, 15:47", "01/06/2021 09:30", "1h57’ trước", "1h57’ trước"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Thông báo hệ thống"
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "notificationMenu"), style: .done, target: self, action: nil)
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
    }
    
    func setupLayout() {
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }

}
extension _7NotificationViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "_7NotificationTableViewCell", for: indexPath) as! _7NotificationTableViewCell
        cell.contentLabel.text = contentLabel[indexPath.row]
        cell.dateLabel.text = dateLabel[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detaisNotificationVC = _8DetailsNotificationViewController()
        navigationController?.pushViewController(detaisNotificationVC, animated: true)
    }
}
