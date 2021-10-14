

import UIKit

class _7NotificationTableViewCell: UITableViewCell {
    
    let containerView = UIView().view()

    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        return label
    }()
    
    let notificationImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "notification")
        image.contentMode = .scaleAspectFill
        image.contentMode = .top
        return image
    }()
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
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
        self.addSubview(containerView)
        containerView.addSubview(notificationImage)
        containerView.addSubview(dateLabel)
        containerView.addSubview(contentLabel)

        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        notificationImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 15).isActive = true
        notificationImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        notificationImage.heightAnchor.constraint(equalToConstant: 36).isActive = true
        notificationImage.widthAnchor.constraint(equalTo: notificationImage.heightAnchor, multiplier: 1).isActive = true
        
        contentLabel.topAnchor.constraint(equalTo: notificationImage.topAnchor, constant: 0).isActive = true
        contentLabel.leadingAnchor.constraint(equalTo: notificationImage.trailingAnchor, constant: 16).isActive = true
        contentLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        
        dateLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 2).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: contentLabel.leadingAnchor, constant: 0).isActive = true
        dateLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12).isActive = true

    }

}
