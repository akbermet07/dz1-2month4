//
//  ViewController.swift
//  dz1month4
//
//  Created by Акбермет Таалайбек кызы on 20/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var kidImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "kid")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var titleLbl: UILabel = {
        let view = UILabel()
        view.text = "Welcome Back"
        view.font = .systemFont(ofSize: 34, weight: .bold)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var desrLbl: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.font = .systemFont(ofSize: 20, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // input view
    private var whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var loginLbl: UILabel = {
        let view = UILabel()
        view.text = "Employee Id / Email"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var loginTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Employee Id / Email"
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var dividerFirst: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var paswordLbl: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var paswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var eyeImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "eye")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var dividerSecond: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var forgotBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Forgot Password?", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(forgotBtnTapped(sender:)), for: .touchUpInside)
        return view
    }()
    
    private var agreeImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "agree")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var rememberLbl: UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.font = .systemFont(ofSize: 18, weight: .bold)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var signIn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = 15
        view.addTarget(self, action: #selector(signInTapped(sender:)), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var dontHaveAccoutnLbl: UILabel = {
        let view = UILabel()
        view.text = "Don’t have an Account?"
        view.font = .systemFont(ofSize: 13, weight: .bold)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var signUp: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign Up", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(signUpTapped(sender:)), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        view.addSubview(kidImage)
        NSLayoutConstraint.activate([
            kidImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            kidImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            kidImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            kidImage.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        view.addSubview(titleLbl)
        NSLayoutConstraint.activate([
            titleLbl.topAnchor.constraint(equalTo: kidImage.bottomAnchor),
            titleLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
        ])
        
        view.addSubview(desrLbl)
        NSLayoutConstraint.activate([
            desrLbl.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 4),
            desrLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
        ])
        
        view.addSubview(whiteView)
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: desrLbl.bottomAnchor, constant: 8),
            whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
        
        whiteView.addSubview(loginLbl)
        NSLayoutConstraint.activate([
            loginLbl.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 20),
            loginLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23)
        ])
        
        whiteView.addSubview(loginTF)
        NSLayoutConstraint.activate([
            loginTF.topAnchor.constraint(equalTo: loginLbl.bottomAnchor, constant: 13),
            loginTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            loginTF.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            loginTF.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(dividerFirst)
        NSLayoutConstraint.activate([
            dividerFirst.topAnchor.constraint(equalTo: loginTF.bottomAnchor, constant: 13),
            dividerFirst.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerFirst.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerFirst.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(paswordLbl)
        NSLayoutConstraint.activate([
            paswordLbl.topAnchor.constraint(equalTo: dividerFirst.bottomAnchor, constant: 25),
            paswordLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            paswordLbl.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: 23),
        ])
        
        whiteView.addSubview(paswordTF)
        NSLayoutConstraint.activate([
            paswordTF.topAnchor.constraint(equalTo: paswordLbl.bottomAnchor, constant: 13),
            paswordTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            paswordTF.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(eyeImage)
        NSLayoutConstraint.activate([
            eyeImage.topAnchor.constraint(equalTo: paswordLbl.bottomAnchor, constant: 16),
            eyeImage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            eyeImage.leadingAnchor.constraint(equalTo: paswordTF.trailingAnchor, constant: 8),
            eyeImage.heightAnchor.constraint(equalToConstant: 13),
            eyeImage.widthAnchor.constraint(equalToConstant: 18)
        ])
        
        whiteView.addSubview(dividerSecond)
        NSLayoutConstraint.activate([
            dividerSecond.topAnchor.constraint(equalTo: paswordTF.bottomAnchor, constant: 13),
            dividerSecond.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerSecond.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerSecond.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(forgotBtn)
        NSLayoutConstraint.activate([
            forgotBtn.topAnchor.constraint(equalTo: dividerSecond.bottomAnchor, constant: 3),
            forgotBtn.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23)
        ])
        
        whiteView.addSubview(agreeImage)
        NSLayoutConstraint.activate([
            agreeImage.topAnchor.constraint(equalTo: forgotBtn.bottomAnchor, constant: 8),
            agreeImage.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            agreeImage.heightAnchor.constraint(equalToConstant: 24),
            agreeImage.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(rememberLbl)
        NSLayoutConstraint.activate([
            rememberLbl.topAnchor.constraint(equalTo: forgotBtn.bottomAnchor, constant: 10),
            rememberLbl.leadingAnchor.constraint(equalTo: agreeImage.trailingAnchor, constant: 8)
        ])
        
        whiteView.addSubview(dontHaveAccoutnLbl)
        NSLayoutConstraint.activate([
            dontHaveAccoutnLbl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            dontHaveAccoutnLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23)
        ])
        
        whiteView.addSubview(signUp)
        NSLayoutConstraint.activate([
            signUp.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -3),
            signUp.leadingAnchor.constraint(equalTo: dontHaveAccoutnLbl.trailingAnchor, constant: 5)
        ])
        
        whiteView.addSubview(signIn)
        NSLayoutConstraint.activate([
            signIn.bottomAnchor.constraint(equalTo: signUp.topAnchor, constant: -15),
            signIn.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
            signIn.heightAnchor.constraint(equalToConstant: 40),
            signIn.widthAnchor.constraint(equalToConstant: 168)
        ])
    }
    
    @objc func signInTapped(sender: UIButton) {
        checkUser()
    }
    
    @objc func signUpTapped(sender: UIButton) {
        let vc = SignUpController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func forgotBtnTapped(sender: UIButton) {
        let vc = ForgotPasswordController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func checkUser() {
        validateTF(textField: loginTF,
                   idLabel: loginLbl,
                   error: "Введите правильный login/id",
                   prompt: "Employee Id / Email")
        
        validateTF(textField: paswordTF,
                   idLabel: paswordLbl,
                   error: "Введите правильный password",
                   prompt: "Password")
        
        if loginTF.text?.count ?? 0 >= 6, paswordTF.text?.count ?? 0 >= 6 {
            let vc = SuccessViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private func validateTF(textField: UITextField, idLabel: UILabel, error: String, prompt: String ) {
        if textField.text?.count ?? 0 < 6 {
            idLabel.text = error
            idLabel.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            idLabel.text = prompt
            idLabel.textColor = .black
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.white.cgColor
        }
    }
}

