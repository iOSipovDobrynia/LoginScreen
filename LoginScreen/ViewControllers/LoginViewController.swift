//
//  LoginViewController.swift
//  LoginScreen
//
//  Created by Goodwasp on 24.09.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - Private properties
    private let bgView = UIView()
    
    private let image = UIImageView()
    
    private let emailLabel = CustomLabel(title: "Email")
    private let passwordLabel = CustomLabel(title: "Password")
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - Setting view
private extension LoginViewController {
    func setupView() {
        view.backgroundColor = .systemYellow
        
        addSubViews()
        
        setupLayout()
    }
}

// MARK: - Settings
private extension LoginViewController {
    func addSubViews() {
        [
        
        ].forEach { subView in
            view.addSubview(subView)
        }
    }
}

// MARK: - Layout
private extension LoginViewController {
    func setupLayout() {
        
    }
}
