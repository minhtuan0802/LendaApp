//
//  15InstructionsTableViewCell.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 18/07/2021.
//

import UIKit

//protocol CellIntructionDelegate: AnyObject {
//    func hideActionButton()
//}

class _5InstructionsTableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let instructionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    let hideImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "noAccept")
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
    
//    var delegate: CellIntructionDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupLayout()
//        self.hideImage.isUserInteractionEnabled = true
//        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(hideLabel))
//        tapgesture.numberOfTapsRequired = 1
//        self.hideImage.addGestureRecognizer(tapgesture)
        
    }

    func setupLayout() {
        self.addSubview(containerView)
        containerView.addSubview(instructionLabel)
        containerView.addSubview(hideImage)
        containerView.addSubview(contentLabel)

        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        instructionLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true

        hideImage.centerYAnchor.constraint(equalTo: instructionLabel.centerYAnchor, constant: 0).isActive = true
        hideImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        hideImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        hideImage.widthAnchor.constraint(equalTo: hideImage.heightAnchor, multiplier: 1).isActive = true

        contentLabel.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 17).isActive = true
        contentLabel.trailingAnchor.constraint(equalTo: hideImage.trailingAnchor, constant: 0).isActive = true
        contentLabel.leadingAnchor.constraint(equalTo: instructionLabel.leadingAnchor, constant: 0).isActive = true
        contentLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -17).isActive = true

    }
    
//    @objc func hideLabel() {
//
//    }

}
