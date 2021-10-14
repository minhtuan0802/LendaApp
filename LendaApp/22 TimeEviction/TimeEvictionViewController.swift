
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
        fetchData()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = false
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
    
    func fetchData(){
            guard let user = Auth.auth().currentUser else {return}
            let db = Firestore.firestore()
            let userCollection = db.collection("User")
            let userDocument = userCollection.document(user.uid)
            let contractInformationCollection = userDocument.collection("ContractInformation")
            contractInformationCollection.addSnapshotListener { [self] query, err in
                if err != nil {return}

                if arrContract.count < query!.documents.count {
                    arrContract.removeAll()
                }

                for i in query!.documents {
                    self.contract.inforContract["LoanFormat"] = i.get("LoanFormat") as? String ?? ""
                    self.contract.inforContract["LoanAmount"] = i.get("LoanAmount") as? String ?? ""
                    self.contract.inforContract["InterestRate"] = i.get("InterestRate") as? String ?? ""
                    self.contract.inforContract["LoanDuration"] = i.get("LoanDuration") as? String ?? ""
                    self.contract.inforContract["PayFormat"] = i.get("PayFormat") as? String ?? ""
                    self.contract.inforContract["FullName"] = i.get("FullName") as? String ?? ""
                    self.contract.inforContract["NumberPhone"] = i.get("NumberPhone") as? String ?? ""
                    self.contract.inforContract["Address"] = i.get("Address") as? String ?? ""

                    arrContract.append(contract.inforContract)
                }
                tableView.reloadData()
            }
        }
    
    
}

extension TimeEvictionViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrContract.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimeEvictionUITableViewCell", for: indexPath) as! TimeEvictionUITableViewCell
        cell.selectionStyle = .none
        cell.moneyNumberLabel.text = arrContract[indexPath.row]["LoanAmount"]
        cell.nameLabel.text = arrContract[indexPath.row]["FullName"]
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let historyLoanVC = _3HistoryLoanAmountViewController()
        historyLoanVC.arrayValue = arrContract[indexPath.row]
        navigationController?.pushViewController(historyLoanVC, animated: true)
    }
}

