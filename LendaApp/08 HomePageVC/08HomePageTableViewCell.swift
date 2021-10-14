

import UIKit

class _8HomePageTableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        view.layer.cornerRadius = 8
        view.layer.shadowColor = CGColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.008)
        return view
    }()
    
    let avatarImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "avatar")
        image.layer.cornerRadius = 12
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Trần Long Ẩn"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10 tháng trước"
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let separation: UIView = {
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
    
    let addressLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Địa chỉ"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let interestRateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lãi suất"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let interestRateNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "18%/năm"
        label.textColor = UIColor(red: 0.20, green: 0.66, blue: 0.99, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
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
    
    let address: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "P. Trúc Bạch, Q. Ba Đình, TP Hà Nội"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
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
        containerView.addSubview(avatarImage)
        containerView.addSubview(nameLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(separation)
        containerView.addSubview(moneyLabel)
        containerView.addSubview(moneyNumberLabel)
        containerView.addSubview(iconStackView)
        iconStackView.addArrangedSubview(termIcon)
        iconStackView.addArrangedSubview(formalityIcon)
        iconStackView.addArrangedSubview(addressIcon)
        containerView.addSubview(labelStackView)
        labelStackView.addArrangedSubview(termLabel)
        labelStackView.addArrangedSubview(formalityLabel)
        labelStackView.addArrangedSubview(addressLabel)
        containerView.addSubview(interestRateLabel)
        containerView.addSubview(interestRateNumberLabel)
        containerView.addSubview(valueStackView)
        valueStackView.addArrangedSubview(term)
        valueStackView.addArrangedSubview(formality)
        valueStackView.addArrangedSubview(address)

        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        avatarImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        avatarImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        avatarImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        avatarImage.widthAnchor.constraint(equalTo: avatarImage.heightAnchor, multiplier: 1).isActive = true
        
        nameLabel.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor, constant: 0).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16).isActive = true
        
        dateLabel.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor, constant: 0).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12).isActive = true
        
        separation.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 12).isActive = true
        separation.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        separation.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        separation.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        moneyLabel.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor, constant: 0).isActive = true
        moneyLabel.topAnchor.constraint(equalTo: separation.bottomAnchor, constant: 12).isActive = true
        
        moneyNumberLabel.leadingAnchor.constraint(equalTo: moneyLabel.leadingAnchor, constant: 0).isActive = true
        moneyNumberLabel.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 4).isActive = true
        
        iconStackView.topAnchor.constraint(equalTo: moneyNumberLabel.bottomAnchor, constant: 14).isActive = true
        iconStackView.leadingAnchor.constraint(equalTo: moneyNumberLabel.leadingAnchor, constant: 0).isActive = true
        iconStackView.heightAnchor.constraint(equalToConstant: 58).isActive = true
        iconStackView.widthAnchor.constraint(equalToConstant: 12).isActive = true
        
        termIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        formalityIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        addressIcon.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        labelStackView.topAnchor.constraint(equalTo: iconStackView.topAnchor, constant: -2).isActive = true
        labelStackView.bottomAnchor.constraint(equalTo: iconStackView.bottomAnchor, constant: 2).isActive = true
        labelStackView.leadingAnchor.constraint(equalTo: iconStackView.trailingAnchor, constant: 7).isActive = true
        labelStackView.trailingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        
        interestRateLabel.topAnchor.constraint(equalTo: moneyLabel.topAnchor, constant: 0).isActive = true
        interestRateLabel.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        interestRateLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        
        interestRateNumberLabel.topAnchor.constraint(equalTo: moneyNumberLabel.topAnchor, constant: 0).isActive = true
        interestRateNumberLabel.leadingAnchor.constraint(equalTo: interestRateLabel.leadingAnchor, constant: 0).isActive = true
        interestRateNumberLabel.trailingAnchor.constraint(equalTo: interestRateLabel.trailingAnchor, constant: 0).isActive = true
        
        valueStackView.topAnchor.constraint(equalTo: labelStackView.topAnchor, constant: 0).isActive = true
        valueStackView.leadingAnchor.constraint(equalTo: interestRateLabel.leadingAnchor, constant: 0).isActive = true
        valueStackView.trailingAnchor.constraint(equalTo: interestRateLabel.trailingAnchor, constant: 0).isActive = true
        valueStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12).isActive = true

    }

}
