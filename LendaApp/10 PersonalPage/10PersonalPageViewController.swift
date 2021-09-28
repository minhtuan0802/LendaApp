//
//  10PersonalPageViewController.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 17/07/2021.
//

import UIKit
import Firebase
import ProgressHUD


class _0PersonalPageViewController: UIViewController {
    
    var userInformation = UserInformation()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()
    
    let informationView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        return view
    }()
    
    let avatarImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "avatar")
        image.layer.cornerRadius = 50
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    let changeImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "changeAvatar")
        image.layer.cornerRadius = 12
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(_0PersonalPageTableViewCell.self, forCellReuseIdentifier: "_0PersonalPageTableViewCell")
        return tableView
    }()
    
    let infomationSection1 = ["Hỗ trợ", "Điều Khoản & Bảo Mật", "Giới thiệu về Lenda", "Hướng dẫn"]
    let infomationSection2 = ["Hồ sơ", "Cài Đặt", "Đăng xuất"]
    
    let detailsSection1 = ["Giải đáp thắc mắc", "Chi tiết", "Chi tiết", "Chi tiết"]
    let detailsSection2 = ["Cập nhật & chỉnh sửa", "Đổi mật khẩu", ""]
    
    let photoContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.50)
        view.isHidden = true
        return view
    }()
    
    let photoView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        view.layer.cornerRadius = 8
        return view
    }()
    
    let photoLibraryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tải ảnh từ thư viện"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    let separation: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    let photographLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Chụp ảnh"
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        return label
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        button.setTitleColor(UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00), for: .normal)
        button.setTitle("Hủy", for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.addTarget(self, action: #selector(showPersonalPage), for: .touchUpInside)
        return button
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hidePersonalPage))
        avatarImage.addGestureRecognizer(tapGesture)
        avatarImage.isUserInteractionEnabled = true
        
        self.nameLabel.text = self.userInformation.name
        self.emailLabel.text = self.userInformation.email
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = false
        tabBarController?.tabBar.shadowImage = UIImage()
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        appearance.backgroundColor = UIColor(red: 0.84, green: 0.18, blue: 0.18, alpha: 1.00)
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Thông tin nhà đầu tư"
        navigationController?.navigationBar.tintColor = UIColor.white
//        UINavigationBar.appearance().shadowImage = UIImage()
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        

    }
    
    func setupLayout() {
        // go to forgot password viewcontroller
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(pickPhotoLibrary))
        photoLibraryLabel.addGestureRecognizer(tapGesture)
        photoLibraryLabel.isUserInteractionEnabled = true
        
        // setup layout
        self.view.addSubview(containerView)
        containerView.addSubview(informationView)
        
        informationView.addSubview(avatarImage)
        informationView.addSubview(changeImage)
        informationView.addSubview(nameLabel)
        informationView.addSubview(emailLabel)
        containerView.addSubview(tableView)
        self.view.addSubview(photoContainerView)
        photoContainerView.addSubview(photoView)
        photoView.addSubview(photoLibraryLabel)
        photoView.addSubview(separation)
        photoView.addSubview(photographLabel)
        photoContainerView.addSubview(cancelButton)
        
        
        containerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        informationView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        informationView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        informationView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        
        avatarImage.topAnchor.constraint(equalTo: informationView.topAnchor, constant: 24).isActive = true
        avatarImage.centerXAnchor.constraint(equalTo: informationView.centerXAnchor, constant: 0).isActive = true
        avatarImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        avatarImage.widthAnchor.constraint(equalTo: avatarImage.heightAnchor, multiplier: 1).isActive = true
        
        changeImage.bottomAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 0).isActive = true
        changeImage.trailingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 0).isActive = true
        changeImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        changeImage.widthAnchor.constraint(equalTo: changeImage.heightAnchor, multiplier: 1).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 20).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: avatarImage.centerXAnchor, constant: 0).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 2).isActive = true
        emailLabel.centerXAnchor.constraint(equalTo: nameLabel.centerXAnchor, constant: 0).isActive = true
        emailLabel.bottomAnchor.constraint(equalTo: informationView.bottomAnchor, constant: -24).isActive = true
        
        tableView.topAnchor.constraint(equalTo: informationView.bottomAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        tableView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        
        photoContainerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        photoContainerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        photoContainerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        photoContainerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        cancelButton.centerXAnchor.constraint(equalTo: photoContainerView.centerXAnchor, constant: 0).isActive = true
        cancelButton.leadingAnchor.constraint(equalTo: photoContainerView.leadingAnchor, constant: 16).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: photoContainerView.bottomAnchor, constant: -24).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        photoView.centerXAnchor.constraint(equalTo: cancelButton.centerXAnchor, constant: 0).isActive = true
        photoView.leadingAnchor.constraint(equalTo: cancelButton.leadingAnchor, constant: 0).isActive = true
        photoView.bottomAnchor.constraint(equalTo: cancelButton.topAnchor, constant: -8).isActive = true
        
        separation.centerXAnchor.constraint(equalTo: photoView.centerXAnchor, constant: 0).isActive = true
        separation.leadingAnchor.constraint(equalTo: photoView.leadingAnchor, constant: 0).isActive = true
        separation.centerYAnchor.constraint(equalTo: photoView.centerYAnchor, constant: 0).isActive = true
        separation.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        photographLabel.centerXAnchor.constraint(equalTo: photoView.centerXAnchor, constant: 0).isActive = true
        photographLabel.topAnchor.constraint(equalTo: separation.bottomAnchor, constant: 12).isActive = true
        photographLabel.bottomAnchor.constraint(equalTo: photoView.bottomAnchor, constant: -12).isActive = true
        
        photoLibraryLabel.centerXAnchor.constraint(equalTo: photoView.centerXAnchor, constant: 0).isActive = true
        photoLibraryLabel.topAnchor.constraint(equalTo: photoView.topAnchor, constant: 12).isActive = true
        photoLibraryLabel.bottomAnchor.constraint(equalTo: separation.topAnchor, constant: -12).isActive = true
        
    }

    @objc func hidePersonalPage(){
        photoContainerView.isHidden = false
        tabBarController?.tabBar.isHidden = true
        navigationController?.navigationBar.alpha = 0.5
        
    }
    
    @objc func showPersonalPage(){
        photoContainerView.isHidden = true
        tabBarController?.tabBar.isHidden = false
        navigationController?.navigationBar.alpha = 1
    }
    
    @objc func pickPhotoLibrary(){
        let picker = UIImagePickerController.init()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
}

extension _0PersonalPageViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 4))
            headerView.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.00)
            return headerView
        }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else {
            return 4
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 52
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return infomationSection1.count
        } else {
            return infomationSection2.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "_0PersonalPageTableViewCell", for: indexPath) as! _0PersonalPageTableViewCell
        cell.selectionStyle = .none
        
        if indexPath.section == 0 {
            cell.informationLabel.text = infomationSection1[indexPath.row]
            cell.detailsLabel.text = detailsSection1[indexPath.row]
            return cell
        } else {
            cell.informationLabel.text = infomationSection2[indexPath.row]
            cell.detailsLabel.text = detailsSection2[indexPath.row]
            if indexPath.row == 2 {
                cell.image.image = UIImage(named: "")
            }
            if indexPath.row == infomationSection2.count - 1 {
                cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            }
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                let supportVC = _2SupportViewController()
                navigationController?.pushViewController(supportVC, animated: true)
            case 1:
                let privacyPolicyVC = _3PrivacyPolicyViewController()
                navigationController?.pushViewController(privacyPolicyVC, animated: true)
            case 2:
                let presentLendaVC = _4PresentLendaViewController()
                navigationController?.pushViewController(presentLendaVC, animated: true)
            case 3:
                let instructionVC = _5InstructionsViewController()
                navigationController?.pushViewController(instructionVC, animated: true)
            default:
                print("")
            }
        } else {
            switch indexPath.row {
            case 0:
                let profileVC = _6ProfileViewController()
                navigationController?.pushViewController(profileVC, animated: true)
            case 1:
                let changePasswordVC = _7ChangePasswordViewController()
                navigationController?.pushViewController(changePasswordVC, animated: true)
            case 2:
                try? Auth.auth().signOut()
                let changePasswordVC = _3LoginViewController()
                navigationController?.pushViewController(changePasswordVC, animated: true)
//                for item in navigationController!.viewControllers {
//                    if let loginVC = item as? _3LoginViewController {
//                        navigationController?.popToViewController(loginVC, animated: true)
//                    }
//                }
            default:
                print("")
            }
        }
        
    }
    
}

extension _0PersonalPageViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        avatarImage.image = image
        picker.dismiss(animated: true, completion: nil)
    }
//    
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        picker.dismiss(animated: true, completion: nil)
//    }
}
