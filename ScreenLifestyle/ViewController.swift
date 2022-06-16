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
        button.layer.cornerRadius = 10.adoptedForDpi
        
        
        button.titleLabel?.numberOfLines = 1
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.5
        button.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.layer.backgroundColor = UIColor(red: 1, green: 0.455, blue: 0.518, alpha: 1).cgColor
        label.layer.cornerRadius = 4
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    private lazy var forDaysLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "forDaysLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 13)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.layer.backgroundColor = UIColor(red: 1, green: 0.455, blue: 0.518, alpha: 1).cgColor
        label.layer.cornerRadius = 4
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    private lazy var withRiskTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "withRiskTimeLabel".localized
        label.font = UIFont(name: "Montserrat-SemiBold", size: 13)
        
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()

    private lazy var tagImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "tag")
        image.contentMode = .scaleAspectFit
        image.alpha = 0.5
        image.frame = CGRect(x: 0.0, y: 0.0, width: 24.0.adoptedForDpiWidht, height: 24.0.adoptedForDpi)
        return image
    }()
    
    private lazy var dollarImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "dollar")
        image.contentMode = .scaleAspectFit
        image.alpha = 0.5
        image.frame = CGRect(x: 0.0, y: 0.0, width: 24.0.adoptedForDpiWidht, height: 24.0.adoptedForDpi)
        return image
    }()
    
    private lazy var heartImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = false
        image.image = UIImage(named: "heart")
        image.contentMode = .scaleAspectFit
        image.alpha = 0.5
        image.frame = CGRect(x: 0.0, y: 0.0, width: 24.0.adoptedForDpiWidht, height: 24.0.adoptedForDpi)
        return image
    }()
    
    private lazy var stackViewOne: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [tagImage, freeLabel, forDaysLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10.0.adoptedForDpi
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var stackViewTwo: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [dollarImage, noExtraCostLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10.0.adoptedForDpi
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var stackViewThree: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [heartImage, zeroFeeLabel, withRiskTimeLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10.0.adoptedForDpi
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackViewOne, septumView, stackViewTwo, septum2View, stackViewThree])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 5.0.adoptedForDpiWidht
        stackView.distribution = .fill
        return stackView
    }()
    
    private lazy var septumView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        return view
    }()
    
    private lazy var septum2View: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        return view
    }()
    
    private lazy var threeDaysFreeTrialOneButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("threeDaysFreeTrialButton".localized, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 14)
        button.setImage(UIImage(systemName: "circle"), for: .normal)
        button.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)
        button.tintColor = .white
        button.contentHorizontalAlignment = .leading
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        button.layer.cornerRadius = 24
        button.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1).cgColor
        button.addTarget(self, action: #selector(didTap(_:)), for: .touchUpInside)
        
        button.titleLabel?.numberOfLines = 1
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.5
        button.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    private lazy var threeDaysFreeTrialTwoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("threeDaysFreeTrialButton".localized, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 14)
        button.setImage(UIImage(systemName: "circle"), for: .normal)
        button.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)
        button.tintColor = .white
        button.contentHorizontalAlignment = .leading
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 50)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 50)
        button.layer.cornerRadius = 24
        button.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1).cgColor
        
        button.addTarget(self, action: #selector(didTap(_:)), for: .touchUpInside)
        
        button.titleLabel?.numberOfLines = 1
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.5
        button.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
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
        
        button.titleLabel?.numberOfLines = 1
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.5
        button.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
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
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addUIView()
        addSubview()
        setupConstraints()
            print("W - \(UIScreen.main.bounds.width) H - \(UIScreen.main.bounds.height)")
        
            }
    
    @objc func didTap(_ button: UIButton) {
        UIView.transition(with: view, duration: 0.3, options: .transitionCrossDissolve) {
            button.isSelected = !button.isSelected
            print("privacyPolicyLabel - \(self.privacyPolicyLabel.frame)")
            if button.isSelected == true {
                button.layer.borderWidth = 1
                button.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
            } else {
                button.layer.borderWidth = 0
            }
        }
    }
}

private extension ViewController {
    
    func addUIView() {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [#colorLiteral(red: 0.1176470588, green: 0.262745098, blue: 1, alpha: 1), #colorLiteral(red: 0.01568627451, green: 0.8156862745, blue: 0.9921568627, alpha: 1)].map { $0.cgColor }
        gradient.locations = [0.0424, 1.1864]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    
    func addSubview() {
        view.addSubview(vectorImage)
        view.addSubview(closeButton)
        view.addSubview(restoreButton)
        view.addSubview(calenderImage)
        view.addSubview(explorerImage)
        view.addSubview(flashImage)
        view.addSubview(megaphoneImage)
        view.addSubview(premiumLabel)
        view.addSubview(getRidLabel)
        view.addSubview(withoutADSLabel)
        view.addSubview(adBlockerLabel)
        view.addSubview(calendarSpamRemoverLabel)
        view.addSubview(stackView)
        view.addSubview(threeDaysFreeTrialOneButton)
        view.addSubview(threeDaysFreeTrialTwoButton)
        view.addSubview(contineButton)
        view.addSubview(savesLabel)
        view.addSubview(priceWeakYaerLabel)
        view.addSubview(priceWeakLabel)
        view.addSubview(privacyPolicyLabel)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        //vector
        constraints.append(vectorImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.0.adoptedForDpiWidht))
        constraints.append(vectorImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.0.adoptedForDpiWidht))
        constraints.append(vectorImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0.adoptedForDpi))
        constraints.append(vectorImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.43))
        constraints.append(vectorImage.widthAnchor.constraint(equalTo: vectorImage.heightAnchor, multiplier: 0.89))
        
        //calenderImage
        constraints.append(calenderImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 113.0.adoptedForDpiWidht))
        constraints.append(calenderImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 74.0.adoptedForDpi))
        constraints.append(calenderImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.31))
        constraints.append(calenderImage.heightAnchor.constraint(equalTo: calenderImage.widthAnchor, multiplier: 1.0))
        
        //explorerImage
        constraints.append(explorerImage.leadingAnchor.constraint(equalTo: calenderImage.trailingAnchor, constant: 10.0.adoptedForDpiWidht))
        constraints.append(explorerImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 113.0.adoptedForDpi))
        constraints.append(explorerImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.27))
        constraints.append(explorerImage.heightAnchor.constraint(equalTo: explorerImage.widthAnchor, multiplier: 1.0))
        
        //flashImage
        constraints.append(flashImage.leadingAnchor.constraint(equalTo: calenderImage.leadingAnchor, constant: -105.0.adoptedForDpiWidht))
        constraints.append(flashImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 159.0.adoptedForDpi))
        constraints.append(flashImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.32))
        constraints.append(flashImage.heightAnchor.constraint(equalTo: flashImage.widthAnchor, multiplier: 1.0))
        
        //megaphoneImage
        constraints.append(megaphoneImage.leadingAnchor.constraint(equalTo: explorerImage.leadingAnchor, constant: -85.0.adoptedForDpiWidht))
        constraints.append(megaphoneImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 195.0.adoptedForDpi))
        constraints.append(megaphoneImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.33))
        constraints.append(megaphoneImage.heightAnchor.constraint(equalTo: megaphoneImage.widthAnchor, multiplier: 1.0))
        
        //closeButton
        constraints.append(closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34.0.adoptedForDpiWidht))
        constraints.append(closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 62.0.adoptedForDpi))
        constraints.append(closeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.052))
        constraints.append(closeButton.heightAnchor.constraint(equalTo: closeButton.widthAnchor, multiplier: 1.0))
        
        //restoreButton
        constraints.append(restoreButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 276.0.adoptedForDpiWidht))
        constraints.append(restoreButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32.0.adoptedForDpiWidht))
        constraints.append(restoreButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 62.0.adoptedForDpi))
        constraints.append(restoreButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.20))
        constraints.append(restoreButton.heightAnchor.constraint(equalTo: restoreButton.widthAnchor, multiplier: 0.37))
        
        //premiumLabel
        constraints.append(premiumLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33.0.adoptedForDpiWidht))
        constraints.append(premiumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0.adoptedForDpiWidht))
        constraints.append(premiumLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 328.0.adoptedForDpi))
        
        //getRidLabel
        constraints.append(getRidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23.0.adoptedForDpiWidht))
        constraints.append(getRidLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 393.0.adoptedForDpi))
        constraints.append(getRidLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.58))
        constraints.append(getRidLabel.heightAnchor.constraint(equalTo: getRidLabel.widthAnchor, multiplier: 0.12))
        
        //withoutADSLabel
        constraints.append(withoutADSLabel.leadingAnchor.constraint(equalTo: getRidLabel.trailingAnchor, constant: 10.0.adoptedForDpiWidht))
        constraints.append(withoutADSLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 393.0.adoptedForDpi))
        constraints.append(withoutADSLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.0.adoptedForDpiWidht))
        constraints.append(withoutADSLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.26))
        constraints.append(withoutADSLabel.heightAnchor.constraint(equalTo: withoutADSLabel.widthAnchor, multiplier: 0.26))
        
        //adBlockerLabel
        constraints.append(adBlockerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0.adoptedForDpiWidht))
        constraints.append(adBlockerLabel.topAnchor.constraint(equalTo: getRidLabel.bottomAnchor, constant: 16.0.adoptedForDpi))
        constraints.append(adBlockerLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.39))
        constraints.append(adBlockerLabel.heightAnchor.constraint(equalTo: adBlockerLabel.widthAnchor, multiplier: 0.18))
        
        //calendarSpamRemoverLabel
        constraints.append(calendarSpamRemoverLabel.leadingAnchor.constraint(equalTo: adBlockerLabel.trailingAnchor, constant: 10.0))
        constraints.append(calendarSpamRemoverLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25.0))
        constraints.append(calendarSpamRemoverLabel.topAnchor.constraint(equalTo: getRidLabel.bottomAnchor, constant: 16.0))
        constraints.append(calendarSpamRemoverLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.44))
        constraints.append(calendarSpamRemoverLabel.heightAnchor.constraint(equalTo: calendarSpamRemoverLabel.widthAnchor, multiplier: 0.16))
        
        //septumView
        constraints.append(septumView.widthAnchor.constraint(equalToConstant: 1.0.adoptedForDpiWidht))
        constraints.append(septumView.heightAnchor.constraint(equalTo: stackView.heightAnchor))
        
        //septum2View
        constraints.append(septum2View.widthAnchor.constraint(equalToConstant: 1.0.adoptedForDpiWidht))
        constraints.append(septum2View.heightAnchor.constraint(equalTo: stackView.heightAnchor))
        
        //stackView
        constraints.append(stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28.0.adoptedForDpiWidht))
        constraints.append(stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0.adoptedForDpiWidht))
        constraints.append(stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 475.0.adoptedForDpi))
        constraints.append(stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85))
        constraints.append(stackView.heightAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.21))
        
        //threeDaysFreeTrialOneButton
        constraints.append(threeDaysFreeTrialOneButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0.adoptedForDpiWidht))
        constraints.append(threeDaysFreeTrialOneButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0.adoptedForDpiWidht))
        constraints.append(threeDaysFreeTrialOneButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 569.0.adoptedForDpi))
        constraints.append(threeDaysFreeTrialOneButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85))
        constraints.append(threeDaysFreeTrialOneButton.heightAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.widthAnchor, multiplier: 0.15))
        
        //threeDaysFreeTrialTwoButton
        constraints.append(threeDaysFreeTrialTwoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0.adoptedForDpiWidht))
        constraints.append(threeDaysFreeTrialTwoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0.adoptedForDpiWidht))
        constraints.append(threeDaysFreeTrialTwoButton.topAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.bottomAnchor, constant: 10.0.adoptedForDpi))
        constraints.append(threeDaysFreeTrialTwoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85))
        constraints.append(threeDaysFreeTrialTwoButton.heightAnchor.constraint(equalTo: threeDaysFreeTrialTwoButton.widthAnchor, multiplier: 0.15))
        
        //contineButton
        constraints.append(contineButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27.0.adoptedForDpiWidht))
        constraints.append(contineButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28.0.adoptedForDpiWidht))
        constraints.append(contineButton.topAnchor.constraint(equalTo: threeDaysFreeTrialTwoButton.bottomAnchor, constant: 10.0.adoptedForDpi))
        constraints.append(contineButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85))
        constraints.append(contineButton.heightAnchor.constraint(equalTo: contineButton.widthAnchor, multiplier: 0.19))
        
        //savesLabel
        constraints.append(savesLabel.trailingAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.trailingAnchor, constant: -38.0))
        constraints.append(savesLabel.bottomAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.bottomAnchor, constant: -41.0))
        constraints.append(savesLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 70))
        constraints.append(savesLabel.heightAnchor.constraint(equalToConstant: 19.0))
        
        //priceWeakYaerLabel
        constraints.append(priceWeakYaerLabel.trailingAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.trailingAnchor, constant: -25.0.adoptedForDpiWidht))
        constraints.append(priceWeakYaerLabel.centerYAnchor.constraint(equalTo: threeDaysFreeTrialOneButton.centerYAnchor))
        
        //priceWeakLabel
        constraints.append(priceWeakLabel.trailingAnchor.constraint(equalTo: threeDaysFreeTrialTwoButton.trailingAnchor, constant: -25.0.adoptedForDpiWidht))
        constraints.append(priceWeakLabel.centerYAnchor.constraint(equalTo: threeDaysFreeTrialTwoButton.centerYAnchor))
        
        //privacyPolicyLabel
        constraints.append(privacyPolicyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10.0.adoptedForDpiWidht))
        constraints.append(privacyPolicyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10.0.adoptedForDpiWidht))
        constraints.append(privacyPolicyLabel.topAnchor.constraint(equalTo: contineButton.bottomAnchor, constant: 10.0.adoptedForDpi))
        
        NSLayoutConstraint.activate(constraints)
    
    }
}

extension Double {
    var adoptedForDpi: CGFloat {
        return CGFloat(self) * UIScreen.main.bounds.height / 812.0
    }
    
    var adoptedForDpiWidht: CGFloat {
        return CGFloat(self) * UIScreen.main.bounds.width / 375.0
    }
//    print("W - \(UIScreen.main.bounds.width) H - \(UIScreen.main.bounds.height)")
}
