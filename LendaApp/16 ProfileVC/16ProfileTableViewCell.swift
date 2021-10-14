

import UIKit

class _6ProfileTableViewCell: UITableViewCell {
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()

    let valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        setupLayout()
        
    }
    
    func setupLayout() {
        self.addSubview(contentLabel)
        self.addSubview(valueLabel)
        
        contentLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        contentLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true

        valueLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        valueLabel.leadingAnchor.constraint(equalTo: contentLabel.trailingAnchor, constant: 22).isActive = true
        valueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        valueLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12).isActive = true


    }

}
