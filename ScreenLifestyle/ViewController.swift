//
//  ViewController.swift
//  ScreenLifestyle
//
//  Created by Олег Рубан on 27.05.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var vectorImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Vector")
        image.contentMode = .topLeft
        return image
    }()
    
    private lazy var calenderImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "calender-dynamic-premium")
        image.contentMode = .center
        
        image.layer.shadowColor = UIColor.white.cgColor
        image.layer.shadowRadius = 10.0
        image.layer.shadowOpacity = 1.0
        return image
    }()
    
    private lazy var explorerImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "explorer-dynamic-premium")
        image.contentMode = .center
        
        image.layer.shadowColor = UIColor.white.cgColor
        image.layer.shadowRadius = 10.0
        image.layer.shadowOpacity = 1.0
        return image
    }()
    
    private lazy var flashImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "flash-dynamic-premium")
        image.contentMode = .center
        
        image.layer.shadowColor = UIColor.white.cgColor
        image.layer.shadowRadius = 10.0
        image.layer.shadowOpacity = 1.0
        return image
    }()
    
    private lazy var megaphoneImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "megaphone-dynamic-premium")
        image.contentMode = .center
        
        image.layer.shadowColor = UIColor.white.cgColor
        image.layer.shadowRadius = 10.0
        image.layer.shadowOpacity = 1.0
        return image
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "close"), for: .normal)
        button.alpha = 0.5
        return button
    }()
    
    private lazy var restoreButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("restoreButton".localized, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 11)
        button.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2)
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var premiumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "premiumLabel".localized
        label.font = UIFont(name: "Montserrat-ExtraBold", size: 22)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var getRidLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "getRidLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 11)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        label.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).cgColor
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 5
        return label
    }()
    
    private lazy var withoutADSLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "withoutADSLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 11)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        label.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).cgColor
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 5
        return label
    }()
    
    private lazy var adBlockerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "adBlockerLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 11)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        label.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).cgColor
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 5
        return label
    }()
    
    private lazy var calendarSpamRemoverLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "calendarSpamRemoverLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 11)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        label.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).cgColor
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 5
        return label
    }()
    
    private lazy var freeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "freeLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 13)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var noExtraCostLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "noExtraCostLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 13)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var zeroFeeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "zeroFeeLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 13)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var tagImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "tag")
        image.contentMode = .scaleAspectFit
        image.alpha = 0.5
        image.frame = CGRect(x: 0.0, y: 0.0, width: 24.0, height: 24.0)
        return image
    }()
    
    private lazy var dollarImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "dollar")
        image.contentMode = .scaleAspectFit
        image.alpha = 0.5
        image.frame = CGRect(x: 0.0, y: 0.0, width: 24.0, height: 24.0)
        return image
    }()
    
    private lazy var heartImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "heart")
        image.contentMode = .scaleAspectFit
        image.alpha = 0.5
        image.frame = CGRect(x: 0.0, y: 0.0, width: 24.0, height: 24.0)
        return image
    }()
    
    private lazy var stackViewOne: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [tagImage, freeLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10.0
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var stackViewTwo: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [dollarImage, noExtraCostLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10.0
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var stackViewThree: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [heartImage, zeroFeeLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10.0
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackViewOne, stackViewTwo, stackViewThree])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        return stackView
    }()
    
    private lazy var threeDaysFreeTrialOneButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("threeDaysFreeTrialButton".localized, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 14)
        button.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
        button.tintColor = .white
        button.contentHorizontalAlignment = .leading
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.layer.cornerRadius = 24
        button.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1).cgColor
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        button.addSubview(savesLabel)
        return button
    }()
    
    private lazy var priceWeakYaerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "priceWeakYaerLabel".localized
        label.font = UIFont(name: "Roboto-Regular", size: 11)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    private lazy var savesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "savesLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 10)
        label.layer.backgroundColor = UIColor(red: 1, green: 0.455, blue: 0.518, alpha: 1).cgColor
        label.layer.cornerRadius = 4
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var threeDaysFreeTrialTwoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("threeDaysFreeTrialButton".localized, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 14)
        button.setImage(UIImage(systemName: "circle"), for: .normal)
        button.tintColor = .white
        button.contentHorizontalAlignment = .leading
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.layer.cornerRadius = 24
        button.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1).cgColor
        return button
    }()
    
    private lazy var priceWeakLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "priceWeakLabel".localized
        label.font = UIFont(name: "Roboto-Regular", size: 11)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    private lazy var contineButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("contineButton".localized, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 18)
        button.setTitleColor(UIColor(red: 0.016, green: 0.592, blue: 0.992, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 30
        return button
    }()
    
    private lazy var privacyPolicyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "privacyPolicyLabel".localized
        label.font = UIFont(name: "Circe-Regular", size: 10)
        
        label.textColor = UIColor(red: 0.518, green: 0.842, blue: 0.988, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var stackViewButton: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [threeDaysFreeTrialOneButton, threeDaysFreeTrialTwoButton, contineButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [#colorLiteral(red: 0.01568627451, green: 0.4431372549, blue: 0.9921568627, alpha: 1), #colorLiteral(red: 0.01568627451, green: 0.8156862745, blue: 0.9921568627, alpha: 1)].map { $0.cgColor }
        gradient.locations = [0.0424, 1.1864]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.layer.insertSublayer(gradient, at: 0)
        
        view.addSubview(vectorImage)
        view.addSubview(calenderImage)
        view.addSubview(explorerImage)
        view.addSubview(flashImage)
        view.addSubview(megaphoneImage)
        view.addSubview(closeButton)
        view.addSubview(restoreButton)
        view.addSubview(premiumLabel)
        view.addSubview(getRidLabel)
        view.addSubview(withoutADSLabel)
        view.addSubview(adBlockerLabel)
        view.addSubview(calendarSpamRemoverLabel)
        view.addSubview(stackView)
        view.addSubview(priceWeakYaerLabel)
        view.addSubview(savesLabel)
        view.addSubview(priceWeakLabel)
        view.addSubview(privacyPolicyLabel)
        view.addSubview(stackViewButton)
        
        var constraints = [NSLayoutConstraint]()
        
        //vector
        constraints.append(vectorImage.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(vectorImage.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(vectorImage.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(vectorImage.heightAnchor.constraint(equalToConstant: 346.0))
        
        //calenderImage
        constraints.append(calenderImage.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(calenderImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 74.0))
        constraints.append(calenderImage.widthAnchor.constraint(equalToConstant: 115.0))
        constraints.append(calenderImage.heightAnchor.constraint(equalToConstant: 115.0))
        
        //explorerImage
        constraints.append(explorerImage.leadingAnchor.constraint(equalTo: calenderImage.trailingAnchor, constant: 10.0))
        constraints.append(explorerImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 113.0))
        constraints.append(explorerImage.widthAnchor.constraint(equalToConstant: 100.63))
        constraints.append(explorerImage.heightAnchor.constraint(equalToConstant: 100.63))
        
        //flashImage
        constraints.append(flashImage.leadingAnchor.constraint(equalTo: calenderImage.leadingAnchor, constant: -105.0))
        constraints.append(flashImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 159.0))
        constraints.append(flashImage.widthAnchor.constraint(equalToConstant: 122.43))
        constraints.append(flashImage.heightAnchor.constraint(equalToConstant: 122.43))
        
        //megaphoneImage
        constraints.append(megaphoneImage.leadingAnchor.constraint(equalTo: explorerImage.leadingAnchor, constant: -85.0))
        constraints.append(megaphoneImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 195.0))
        constraints.append(megaphoneImage.widthAnchor.constraint(equalToConstant: 126.0))
        constraints.append(megaphoneImage.heightAnchor.constraint(equalToConstant: 126.0))
        
        //closeButton
        constraints.append(closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34.0))
        constraints.append(closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 62.0))
        constraints.append(closeButton.widthAnchor.constraint(equalToConstant: 20.0))
        constraints.append(closeButton.heightAnchor.constraint(equalToConstant: 20.0))
        
        //restoreButton
        constraints.append(restoreButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32.0))
        constraints.append(restoreButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 61.0))
        constraints.append(restoreButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 67.0))
        constraints.append(restoreButton.heightAnchor.constraint(equalToConstant: 25.0))
        
        //premiumLabel
        constraints.append(premiumLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33.0))
        constraints.append(premiumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0))
        constraints.append(premiumLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -55.0))
        constraints.append(adBlockerLabel.topAnchor.constraint(greaterThanOrEqualTo: calenderImage.bottomAnchor, constant: 139.0))
        
        //getRidLabel
        constraints.append(getRidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23.0))
        constraints.append(getRidLabel.topAnchor.constraint(equalTo: premiumLabel.bottomAnchor, constant: 13.0))
        constraints.append(getRidLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 217.0))
        constraints.append(getRidLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 26.0))
        
        //withoutADSLabel
        constraints.append(withoutADSLabel.leadingAnchor.constraint(equalTo: getRidLabel.trailingAnchor, constant: 10.0))
        constraints.append(withoutADSLabel.topAnchor.constraint(equalTo: premiumLabel.bottomAnchor, constant: 13.0))
        constraints.append(withoutADSLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.0))
        constraints.append(withoutADSLabel.widthAnchor.constraint(equalToConstant: 99.0))
        constraints.append(withoutADSLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 26.0))
        
        //adBlockerLabel
        constraints.append(adBlockerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0))
        constraints.append(adBlockerLabel.topAnchor.constraint(equalTo: getRidLabel.bottomAnchor, constant: 16.0))
        constraints.append(adBlockerLabel.widthAnchor.constraint(equalToConstant: 145.0))
        constraints.append(adBlockerLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 26.0))
        
        //calendarSpamRemoverLabel
        constraints.append(calendarSpamRemoverLabel.leadingAnchor.constraint(equalTo: adBlockerLabel.trailingAnchor, constant: 10.0))
        constraints.append(calendarSpamRemoverLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.0))
        constraints.append(calendarSpamRemoverLabel.topAnchor.constraint(equalTo: getRidLabel.bottomAnchor, constant: 16.0))
        constraints.append(calendarSpamRemoverLabel.widthAnchor.constraint(equalToConstant: 165.0))
        constraints.append(calendarSpamRemoverLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 26.0))
        
        //stackView
        constraints.append(stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28.0))
        constraints.append(stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0))
        constraints.append(stackView.topAnchor.constraint(equalTo: calendarSpamRemoverLabel.bottomAnchor, constant: 26.0))
        constraints.append(stackView.heightAnchor.constraint(equalToConstant: 66.0))
        
        //threeDaysFreeTrialOneButton
        constraints.append(threeDaysFreeTrialOneButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0))
        constraints.append(threeDaysFreeTrialOneButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0))
        constraints.append(threeDaysFreeTrialOneButton.widthAnchor.constraint(equalToConstant: 320.0))
        constraints.append(threeDaysFreeTrialOneButton.heightAnchor.constraint(equalToConstant: 48.0))
        
        //threeDaysFreeTrialTwoButton
        constraints.append(threeDaysFreeTrialTwoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0))
        constraints.append(threeDaysFreeTrialTwoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0))
        constraints.append(threeDaysFreeTrialTwoButton.widthAnchor.constraint(equalToConstant: 320.0))
        constraints.append(threeDaysFreeTrialTwoButton.heightAnchor.constraint(equalToConstant: 48.0))
        
        //contineButton
        constraints.append(contineButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0))
        constraints.append(contineButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0))
        constraints.append(contineButton.widthAnchor.constraint(equalToConstant: 320.0))
        constraints.append(contineButton.heightAnchor.constraint(equalToConstant: 60.0))
        
        //stackViewButton
        constraints.append(stackViewButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 27.0))
        constraints.append(stackViewButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -67.0))
        
        //priceWeakYaerLabel
        constraints.append(priceWeakYaerLabel.trailingAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.trailingAnchor, constant: -25.0))
        constraints.append(priceWeakYaerLabel.centerYAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.centerYAnchor))
        
        //savesLabel
        constraints.append(savesLabel.trailingAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.trailingAnchor, constant: -38.0))
        constraints.append(savesLabel.bottomAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.bottomAnchor, constant: -41.0))
        constraints.append(savesLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 70))
        constraints.append(savesLabel.heightAnchor.constraint(equalToConstant: 19.0))
        
        //priceWeakLabel
        constraints.append(priceWeakLabel.trailingAnchor.constraint(equalTo: threeDaysFreeTrialTwoButton.trailingAnchor, constant: -25.0))
        constraints.append(priceWeakLabel.centerYAnchor.constraint(equalTo: threeDaysFreeTrialTwoButton.centerYAnchor))
        
        //privacyPolicyLabel
        constraints.append(privacyPolicyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10.0))
        constraints.append(privacyPolicyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10.0))
        constraints.append(privacyPolicyLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -27.0))
        
        NSLayoutConstraint.activate(constraints)
    }
}

