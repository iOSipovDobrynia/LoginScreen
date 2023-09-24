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
    
    private let logoImage = UIImageView()
    
    private let emailLabel = CustomLabel(title: "Email")
    private let passwordLabel = CustomLabel(title: "Password")
    
    private let emailTF = CustomTextField(placeholder: "Enter your email")
    private let passwordTF = CustomTextField(placeholder: "Enter your password", isSecure: true)
    
    private let loginButton = CustomButton(
        title: "Log in",
        backgroundColor: .white,
        isShadow: true,
        titleColor: .black
    )
    
    private let questionLabel =  CustomLabel(title: "Need an account?")
    
    private let linkButton = UIButton()
    
    private let emailStack = UIStackView()
    private let passwordStack = UIStackView()
    private let newAccountStack = UIStackView()
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Override func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
}

// MARK: - Setting view
private extension LoginViewController {
    func setupView() {
        view.backgroundColor = .systemYellow
        
        addSubViews()
        
        setupBGView()
        setupLogo()
        setupLinkButton()
        setupStack(emailStack, with: [emailLabel, emailTF], and: .vertical)
        setupStack(passwordStack, with: [passwordLabel, passwordTF], and: .vertical)
        setupStack(newAccountStack, with: [questionLabel, linkButton], and: .horizontal)
        
        setupLayout()
    }
}

// MARK: - Settings
private extension LoginViewController {
    func addSubViews() {
        [
            bgView,
            logoImage,
            emailStack,
            passwordStack,
            loginButton,
            newAccountStack
        ].forEach { subView in
            view.addSubview(subView)
        }
    }
    
    func setupBGView() {
        bgView.backgroundColor = .mainBackGround
    }
    
    func setupLogo() {
        logoImage.image = UIImage(named: "logo")
        logoImage.contentMode = .scaleAspectFit
    }
    
    func setupLinkButton() {
        linkButton.setTitle("Sing up", for: .normal)
        linkButton.setTitleColor(.red, for: .normal)
        linkButton.setTitleColor(.highlightedColor, for: .highlighted)
    }
    
    func setupStack(_ stack: UIStackView, with subViews: [UIView], and axis: NSLayoutConstraint.Axis) {
        stack.axis = axis
        subViews.forEach { subView in
            stack.addArrangedSubview(subView)
        }
    }
}

// MARK: - Layout
private extension LoginViewController {
    func setupLayout() {
        [
            bgView,
            logoImage,
            emailLabel,
            passwordLabel,
            emailTF,
            passwordTF,
            loginButton,
            questionLabel,
            linkButton,
            emailStack,
            passwordStack,
            newAccountStack
        ].forEach { subView in
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            
            bgView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 0),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            emailStack.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 30),
            emailStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            emailStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            passwordStack.topAnchor.constraint(equalTo: emailStack.bottomAnchor, constant: 30),
            passwordStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            passwordStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            
            loginButton.topAnchor.constraint(equalTo: passwordStack.bottomAnchor, constant: 30),
            loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            
            newAccountStack.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            newAccountStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            newAccountStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            newAccountStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        ])
    }
}
