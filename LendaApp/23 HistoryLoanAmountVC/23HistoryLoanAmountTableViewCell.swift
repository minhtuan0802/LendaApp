//
//  23HistoryLoanAmountTableViewCell.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 21/07/2021.
//

import UIKit

class _3HistoryLoanAmountTableViewCell: UITableViewCell {
    
    let containerView = UIView().view()

    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        return label
    }()
    
    let circleImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "circleIcon")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14)
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
        containerView.addSubview(circleImage)
        containerView.addSubview(dateLabel)
        containerView.addSubview(contentLabel)

        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        circleImage.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        circleImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
        circleImage.heightAnchor.constraint(equalToConstant: 16).isActive = true
        circleImage.widthAnchor.constraint(equalTo: circleImage.heightAnchor, multiplier: 1).isActive = true
        
        dateLabel.centerYAnchor.constraint(equalTo: circleImage.centerYAnchor, constant: 0).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: circleImage.trailingAnchor, constant: 16).isActive = true
        dateLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true

        contentLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        contentLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true

    }

}
