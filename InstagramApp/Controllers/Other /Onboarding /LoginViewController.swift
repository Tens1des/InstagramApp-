//
//  LoginViewController.swift
//  InstagramApp
//
//  Created by Роман  on 13.05.2024.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: - UI LOG
    
    
    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    
    
    private let usernameEmailField: UITextField = {
        
        let field = UITextField()
        field.placeholder = "Username or Email..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground

        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        
        field.isSecureTextEntry = true
        field.placeholder = "Password..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        
        return field
    }()
    
    
    private let loginButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        
        return button
    }()
    
    private let termsButton: UIButton = {
        
        return UIButton()
    }()
    
    private let createAccountButton : UIButton = {
        
        let button = UIButton()
        
        button.setTitleColor(.label, for: .normal)
        button.setTitle("New User? Create an Account", for: .normal)
    
        return button
    }()
    
    private let privacyButton: UIButton = {
        
        return UIButton()
    }()
    
    private let headerView: UIView = {
        
        let header = UIView()
        
        header.clipsToBounds = true
        let backgroundImageView = UIImageView(image: UIImage(named: "Gradient"))
        header.addSubview(backgroundImageView)
        return header
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        view.backgroundColor = .systemBackground
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        //assign frames
        
        headerView.frame = CGRect(x: 0,
                                  y: 0.0,
                                  width: view.width,
                                  height: view.heigth/3.0
        )
        
        configurHeaderView()
    }
    
    private func configurHeaderView() {
        guard headerView.subviews.count == 1 else {
            return
        }
        
        guard let backgroundView = headerView.subviews.first else { return
        }
        backgroundView.frame = headerView.bounds
        
        //Add Instagram logo
        let imageView = UIImageView(image: UIImage(named: "text"))
        headerView.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: headerView.width/4.0,
                                 y: view.safeAreaInsets.top,
                                 width: headerView.width/2.0,
                                 height: headerView.heigth - view.safeAreaInsets.top)
    }
    
    private func addSubview() {
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(createAccountButton)
        view.addSubview(headerView)
        
    }
    
    
    @objc private func didTapLoginButton () {}
    @objc private func didTapTremsButton() {}
    @objc private func didTapPrivacyButton () {}
    @objc private func didTapCreateAcountButton () {}
    

    
}
