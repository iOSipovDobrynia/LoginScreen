//
//  CustomTextField.swift
//  LoginScreen
//
//  Created by Goodwasp on 24.09.2023.
//

import UIKit

final class CustomTextField: UITextField {

    // MARK: - Private properties
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    // MARK: - Initializer
    init(placeholder: String, isSecure: Bool = false) {
        super.init(frame: .zero)
        
        setupSelfTF(placeholder: placeholder, isSecure: isSecure)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Override func
    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override public func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
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
        
        layoutMargins.left = 10
        
        if isSecure {
            isSecureTextEntry = true
        }
        
        heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
}
