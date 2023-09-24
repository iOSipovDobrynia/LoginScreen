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
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - Setting View
private extension AuthViewController {
    func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        
        addSubviews()
        
        setupLogo()
        
        setupLayout()
    }
}

// MARK: - Settings
private extension AuthViewController {
    func addSubviews() {
        [
            logoImage
        ].forEach { subView in
            view.addSubview(subView)
        }
    }
    
    func setupLogo() {
        logoImage.image = UIImage(named: "logo")
        logoImage.contentMode = .scaleAspectFit
    }
}

// MARK: - Layout
private extension AuthViewController {
    func setupLayout() {
        [
            logoImage
        ].forEach { subView in
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }
}
