

import UIKit


class TimeEvictionUITableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        view.layer.cornerRadius = 8
        view.layer.shadowColor = CGColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.008)
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Trần Long Ẩn"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let separation1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
        return view
    }()
    
    let separation2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
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
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hạn thu"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let dateNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10/10/2021"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()

    let payMoneyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Số tiền thu: 2.000.000 VNĐ"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Chi tiết"
        label.textColor = UIColor(red: 0.20, green: 0.66, blue: 0.99, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
        setupLayout()
    }
    
    func setupLayout() {
        self.addSubview(containerView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(separation1)
        containerView.addSubview(moneyLabel)
        containerView.addSubview(moneyNumberLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(dateNumberLabel)
        containerView.addSubview(separation2)
        containerView.addSubview(payMoneyLabel)
        containerView.addSubview(detailLabel)


        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 14).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        
        separation1.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12).isActive = true
        separation1.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0).isActive = true
        separation1.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        separation1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        moneyLabel.topAnchor.constraint(equalTo: separation1.bottomAnchor, constant: 12).isActive = true
        moneyLabel.leadingAnchor.constraint(equalTo: separation1.leadingAnchor, constant: 0).isActive = true
        
        moneyNumberLabel.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 4).isActive = true
        moneyNumberLabel.leadingAnchor.constraint(equalTo: moneyLabel.leadingAnchor, constant: 0).isActive = true
        
        dateLabel.topAnchor.constraint(equalTo: moneyLabel.topAnchor, constant: 0).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        
        dateNumberLabel.topAnchor.constraint(equalTo: moneyNumberLabel.topAnchor, constant: 0).isActive = true
        dateNumberLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor, constant: 0).isActive = true
        
        separation2.topAnchor.constraint(equalTo: moneyNumberLabel.bottomAnchor, constant: 12).isActive = true
        separation2.leadingAnchor.constraint(equalTo: moneyNumberLabel.leadingAnchor, constant: 0).isActive = true
        separation2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        separation2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        payMoneyLabel.topAnchor.constraint(equalTo: separation2.bottomAnchor, constant: 12).isActive = true
        payMoneyLabel.leadingAnchor.constraint(equalTo: moneyLabel.leadingAnchor, constant: 0).isActive = true
        payMoneyLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12).isActive = true

        detailLabel.topAnchor.constraint(equalTo: payMoneyLabel.topAnchor, constant: 0).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: separation2.trailingAnchor, constant: 0).isActive = true
    }
}
