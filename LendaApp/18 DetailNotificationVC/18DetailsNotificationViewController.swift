

import UIKit

class _8DetailsNotificationViewController: UIViewController {
    
    let containerView = UIView().view()

    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "1h57’ trước"
        label.numberOfLines = 0
        return label
    }()
    
    let notificationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.text = "Thông báo về việc mở rộng mạng lưới kinh doanh năm 2020"
        label.numberOfLines = 0
        return label
    }()
    
    let contentLabel1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Lenda - Ứng dụng Thông Minh là nhà cung cấp giải pháp công nghệ thông minh giúp nhanh chóng thực hiện các yêu cầu công việc, đời song tinh thần của cá nhân và các cơ quan, tổ chức, doanh nghiệp, tập đoàn, dựa trên nền tảng công nghệ hiện đại, bảo đảm tính chính xác, bảo mật."
        label.numberOfLines = 0
        return label
    }()
    
    let photoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "detaisNotification")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 12
        image.clipsToBounds = true
        return image
    }()
    
    let contentLabel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Kết hợp cùng hệ thống bệnh viện đối tác hàng đầu trong lĩnh vực như Học viện Quân Y, Bệnh viện Đại học Y Hà Nội, Bệnh viện Bệnh Nhiệt Đới TW,…"
        label.numberOfLines = 0
        return label
    }()

    let detailsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        
        // setup register lable
        detailsLabel.numberOfLines = 0
        var textArray = [String]()
        var colorArray = [UIColor]()
        let fontArray = Array(repeating: UIFont.systemFont(ofSize: 18), count: 3)

        
        textArray.append("Chi tiết xem")
        textArray.append("tại đây.")

        colorArray.append(UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00))
        colorArray.append(UIColor(red: 0.20, green: 0.66, blue: 0.99, alpha: 1.00))
        
        self.detailsLabel.attributedText = getAttributedString(arrayText: textArray, arrayColors: colorArray, arrayFonts: fontArray)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Chi tiết thông báo"
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00),
            .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = UIColor(red: 0.07, green: 0.15, blue: 0.29, alpha: 1.00)
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "BackIcon")
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)

    }
    
    func setupLayout() {
        view.addSubview(containerView)
        containerView.addSubview(dateLabel)
        containerView.addSubview(notificationLabel)
        containerView.addSubview(contentLabel1)
        containerView.addSubview(contentLabel2)
        containerView.addSubview(photoImage)
        containerView.addSubview(detailsLabel)


        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        dateLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 13).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true

        notificationLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 11).isActive = true
        notificationLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor, constant: 0).isActive = true
        notificationLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
        
        contentLabel1.topAnchor.constraint(equalTo: notificationLabel.bottomAnchor, constant: 12).isActive = true
        contentLabel1.leadingAnchor.constraint(equalTo: notificationLabel.leadingAnchor, constant: 0).isActive = true
        contentLabel1.trailingAnchor.constraint(equalTo: notificationLabel.trailingAnchor, constant: 0).isActive = true
        
        photoImage.topAnchor.constraint(equalTo: contentLabel1.bottomAnchor, constant: 16).isActive = true
        photoImage.leadingAnchor.constraint(equalTo: contentLabel1.leadingAnchor, constant: 0).isActive = true
        photoImage.trailingAnchor.constraint(equalTo: contentLabel1.trailingAnchor, constant: 0).isActive = true
        photoImage.heightAnchor.constraint(equalToConstant: 200).isActive = true

        contentLabel2.topAnchor.constraint(equalTo: photoImage.bottomAnchor, constant: 16).isActive = true
        contentLabel2.leadingAnchor.constraint(equalTo: photoImage.leadingAnchor, constant: 0).isActive = true
        contentLabel2.trailingAnchor.constraint(equalTo: photoImage.trailingAnchor, constant: 0).isActive = true
        
        detailsLabel.topAnchor.constraint(equalTo: contentLabel2.bottomAnchor, constant: 32).isActive = true
        detailsLabel.leadingAnchor.constraint(equalTo: contentLabel2.leadingAnchor, constant: 0).isActive = true
    }

    func getAttributedString(arrayText:[String]?, arrayColors:[UIColor]?, arrayFonts:[UIFont]?) -> NSMutableAttributedString {
        let finalAttributedString = NSMutableAttributedString()
        for i in 0 ..< (arrayText?.count)! {
            var attributes: [NSAttributedString.Key : Any]?
            
            if arrayText?[i] == "tại đây." {
                attributes = [NSAttributedString.Key.foregroundColor: arrayColors?[i] as Any, NSAttributedString.Key.font: arrayFonts?[i] as Any, .underlineStyle: NSUnderlineStyle.single.rawValue] as [NSAttributedString.Key : Any]
            } else {
                attributes = [NSAttributedString.Key.foregroundColor: arrayColors?[i] as Any, NSAttributedString.Key.font: arrayFonts?[i] as Any]
            }
            let attributedStr = (NSAttributedString.init(string: arrayText?[i] ?? "", attributes: attributes))
            if i != 0 {
                finalAttributedString.append(NSAttributedString.init(string: " "))
            }
            
            
            finalAttributedString.append(attributedStr)
        }
        return finalAttributedString
    }
}
