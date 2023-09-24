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
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - Setting View
private extension AuthViewController {
    func setupView() {
        view.backgroundColor = .brown
        
        addSubviews()
        
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
            
        ])
    }
}
