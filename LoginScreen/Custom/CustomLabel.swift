//
//  CustomLabel.swift
//  LoginScreen
//
//  Created by Goodwasp on 24.09.2023.
//

import UIKit

final class CustomLabel: UILabel {
    
    // MARK: - Initializer
    init(title: String) {
        super.init(frame: .zero)
        
        setupSelfLabel(title: title)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private func
    private func setupSelfLabel(title: String) {
        text = title
        textColor = .white
        font = .systemFont(ofSize: 20)
    }
}
