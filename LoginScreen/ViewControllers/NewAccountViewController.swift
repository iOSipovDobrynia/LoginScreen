//
//  NewAccountViewController.swift
//  LoginScreen
//
//  Created by Goodwasp on 24.09.2023.
//

import UIKit

final class NewAccountViewController: UIViewController {

    // MARK: - Private properties
    private let logoImage = UIImageView()
    
    private let bgView = UIView()
    
    private let firstnameLabel = CustomLabel(title: "Firstname")
    private let secondnameLabel = CustomLabel(title: "Secondname")
    private let emailLabel = CustomLabel(title: "Email")
    private let passwordLabel = CustomLabel(title: "Password")
    private let questionLabel = CustomLabel(title: "Already have account?")
    
    private let firstnameTF = CustomTextField(placeholder: "Enter your name")
    private let secondnameTF = CustomTextField(placeholder: "Enter your surname")
    private let emailTF = CustomTextField(placeholder: "Enter your email")
    private let passwordTF = CustomTextField(placeholder: "Enter your password", isSecure: true)
    
    private let signUpButton = CustomButton(title: "Sign up", backgroundColor: .systemCyan, isShadow: false)
    private let linkButton = UIButton()
    
    private let firstnameStack = UIStackView()
    private let secondnameStack = UIStackView()
    private let nameStack = UIStackView()
    private let emailStack = UIStackView()
    private let passwordStack = UIStackView()
    private let questionStack = UIStackView()
    
    
    // MARK: - View's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - Setting View
private extension NewAccountViewController {
    func setupView() {
        view.backgroundColor = .systemYellow
        
        addSubViews()
        
        setupLogo()
        setupBGView()
        setupLinkButton()
        setupStack(firstnameStack, with: [firstnameLabel, firstnameTF], and: .vertical)
        setupStack(secondnameStack, with: [secondnameLabel, secondnameTF], and: .vertical)
        setupStack(nameStack, with: [firstnameStack, secondnameStack], and: .horizontal)
        setupStack(emailStack, with: [emailLabel, emailTF], and: .vertical)
        setupStack(passwordStack, with: [passwordLabel, passwordTF], and: .vertical)
        setupStack(questionStack, with: [questionLabel, linkButton], and: .horizontal)
        
        setupLayout()
    }
}

// MARK: - Settings
private extension NewAccountViewController {
    func addSubViews() {
        [
            logoImage,
            bgView,
            firstnameStack,
            secondnameStack,
            nameStack,
            emailStack,
            passwordStack,
            questionStack,
            signUpButton
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
        linkButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        linkButton.setTitle("Sing in", for: .normal)
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
private extension NewAccountViewController {
    func setupLayout() {
        [
            logoImage,
            bgView,
            firstnameLabel,
            secondnameLabel,
            emailLabel,
            passwordLabel,
            questionLabel,
            firstnameTF,
            secondnameTF,
            emailTF,
            passwordTF,
            signUpButton,
            linkButton,
            firstnameStack,
            secondnameStack,
            nameStack,
            emailStack,
            passwordStack,
            questionStack
        ].forEach { subView in
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            
            bgView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 0),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            nameStack.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 30),
            nameStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            nameStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            emailStack.topAnchor.constraint(equalTo: nameStack.bottomAnchor, constant: 30),
            emailStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            emailStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            passwordStack.topAnchor.constraint(equalTo: emailStack.bottomAnchor, constant: 30),
            passwordStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            passwordStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            signUpButton.topAnchor.constraint(equalTo: passwordStack.bottomAnchor, constant: 30),
            signUpButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            questionStack.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 30),
            questionStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            questionStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
