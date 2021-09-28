//
//  10PersonalPageTableViewCell.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 17/07/2021.
//

import UIKit

class _0PersonalPageTableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let informationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()

    let detailsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()

    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "arrowRight")
        return image
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
        containerView.addSubview(informationLabel)
        containerView.addSubview(detailsLabel)
        containerView.addSubview(image)

        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        informationLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        informationLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        
        image.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        image.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        image.heightAnchor.constraint(equalToConstant: 24).isActive = true
        image.widthAnchor.constraint(equalTo: image.heightAnchor, multiplier: 1).isActive = true
        
        detailsLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        detailsLabel.trailingAnchor.constraint(equalTo: image.leadingAnchor, constant: -12).isActive = true

    }
}
