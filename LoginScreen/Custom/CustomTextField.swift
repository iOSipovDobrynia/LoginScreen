//
//  CustomTextField.swift
//  LoginScreen
//
//  Created by Goodwasp on 24.09.2023.
//

import UIKit

final class CustomTextField: UITextField {

    // MARK: - Initializer
    init(placeholder: String, isSecure: Bool = false) {
        super.init(frame: .zero)
        
        setupSelfTF(placeholder: placeholder, isSecure: isSecure)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private func
    private func setupSelfTF(placeholder: String, isSecure: Bool) {
        attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [
                .foregroundColor: UIColor.systemCyan
            ]
        )
        
        font = .boldSystemFont(ofSize: 18)
        textColor = .white
        
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        layer.backgroundColor = UIColor.textFieldBackground.cgColor
        
        if isSecure {
            isSecureTextEntry = true
        }
        
        heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
}
