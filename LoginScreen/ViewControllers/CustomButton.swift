//
//  CustomButton.swift
//  LoginScreen
//
//  Created by Goodwasp on 24.09.2023.
//

import UIKit

final class CustomButton: UIButton {
    
    init(title: String, backgroundColor: UIColor, isShadow: Bool, titleColor: UIColor = .white) {
        super.init(frame: .zero)
        
        setupSelfButton(
            title: title,
            backgroundColor: backgroundColor,
            isShadow: isShadow,
            titleColor: titleColor
        )
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSelfButton(title: String, backgroundColor: UIColor, isShadow: Bool, titleColor: UIColor) {
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 25)
        layer.cornerRadius = 10
        self.backgroundColor = backgroundColor
        
        if isShadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowRadius = 7
            layer.shadowOpacity = 0.4
            layer.shadowOffset = CGSize(width: 0, height: 7)
        }
    }
}
