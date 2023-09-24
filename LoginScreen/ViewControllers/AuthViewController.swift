//
//  AuthViewController.swift
//  LoginScreen
//
//  Created by Goodwasp on 24.09.2023.
//

import UIKit

final class AuthViewController: UIViewController {

    // MARK: - Private properties
    private let logoImage = UIImageView()
    
    private let emailLabel = CustomLabel(title: "Create a new account")
    private let loginLabel = CustomLabel(title: "Login with existing credentials")
    
    private let emailButton = CustomButton(
        title: "Email",
        backgroundColor: .systemCyan,
        isShadow: false
    )
    private let loginButton = CustomButton(
        title: "Login",
        backgroundColor: .white,
        isShadow: true,
        titleColor: .black
    )
    
    private let emailStack = UIStackView()
    private let loginStack = UIStackView()
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Actions
    @objc
    private func showLoginViewController() {
        let loginVC = LoginViewController()
        
        present(loginVC, animated: true)
    }
    
    @objc
    private func emailButtonPressed() {
        
    }
}

// MARK: - Setting View
private extension AuthViewController {
    func setupView() {
        view.backgroundColor = .mainBackGround
        
        addSubviews()
        addActions()
        
        setupLogo()
        setupEmailStack()
        setupLoginStack()
        
        setupLayout()
    }
}

// MARK: - Settings
private extension AuthViewController {
    func addSubviews() {
        [
            logoImage,
            loginStack,
            emailStack
        ].forEach { subView in
            view.addSubview(subView)
        }
    }
    
    func setupLogo() {
        logoImage.image = UIImage(named: "logo")
        logoImage.contentMode = .scaleAspectFit
    }
    
    func setupEmailStack() {
        emailStack.axis = .vertical
        
        [
            emailLabel,
            emailButton
        ].forEach { subView in
            emailStack.addArrangedSubview(subView)
        }
    }
    
    func setupLoginStack() {
        loginStack.axis = .vertical
        
        [
            loginLabel,
            loginButton
        ].forEach { subView in
            loginStack.addArrangedSubview(subView)
        }
    }
    
    func addActions() {
        emailButton.addTarget(self, action: #selector(emailButtonPressed), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(showLoginViewController), for: .touchUpInside)
    }
}

// MARK: - Layout
private extension AuthViewController {
    func setupLayout() {
        [
            logoImage,
            loginLabel,
            loginButton,
            loginStack,
            emailLabel,
            emailButton,
            emailStack
        ].forEach { subView in
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
            
            emailStack.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 30),
            emailStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            emailStack.heightAnchor.constraint(equalToConstant: 150),
            
            loginStack.topAnchor.constraint(equalTo: emailStack.bottomAnchor, constant: 30),
            loginStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginStack.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
