//
//  ThirdViewController.swift
//  dz1month4
//
//  Created by Акбермет Таалайбек кызы on 20/1/24.
//

import UIKit


class SignUpController: UIViewController {
    
    private var kidImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "kid")
        view.contentMode = .scaleAspectFit
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
    
    private var fullNameLbl: UILabel = {
        let view = UILabel()
        view.text = "Full Name"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var fullNameTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Full Name"
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
    
    private var mobileNumberLbl: UILabel = {
        let view = UILabel()
        view.text = "Mobile number"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var mobileNumberTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Mobile number"
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var dividerSecond: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var emailLbl: UILabel = {
        let view = UILabel()
        view.text = "Email"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var emailTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var dividerThird: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var userNameLbl: UILabel = {
        let view = UILabel()
        view.text = "User name"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var userNameTF: UITextField = {
        let view = UITextField()
        view.placeholder = "User name"
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var dividerFourth: UIView = {
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
    
    private var dividerFifth: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var repeatPaswordLbl: UILabel = {
        let view = UILabel()
        view.text = "Confirm password"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var repeatPaswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Confirm password"
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var repeatEyeImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "eye")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var dividerSix: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var signUp: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = 15
        view.addTarget(self, action: #selector(signUpTapped(sender:)), for: .touchUpInside)
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
    
    private var signIn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign In", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(signInTapped(sender:)), for: .touchUpInside)
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
        
        view.addSubview(whiteView)
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: kidImage.bottomAnchor, constant: -50),
            whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        whiteView.addSubview(fullNameLbl)
        NSLayoutConstraint.activate([
            fullNameLbl.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 20),
            fullNameLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23)
        ])
        
        whiteView.addSubview(fullNameTF)
        NSLayoutConstraint.activate([
            fullNameTF.topAnchor.constraint(equalTo: fullNameLbl.bottomAnchor, constant: 13),
            fullNameTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            fullNameTF.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            fullNameTF.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(dividerFirst)
        NSLayoutConstraint.activate([
            dividerFirst.topAnchor.constraint(equalTo: fullNameTF.bottomAnchor, constant: 13),
            dividerFirst.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerFirst.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerFirst.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(mobileNumberLbl)
        NSLayoutConstraint.activate([
            mobileNumberLbl.topAnchor.constraint(equalTo: dividerFirst.bottomAnchor, constant: 20),
            mobileNumberLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23)
        ])
        
        whiteView.addSubview(mobileNumberTF)
        NSLayoutConstraint.activate([
            mobileNumberTF.topAnchor.constraint(equalTo: mobileNumberLbl.bottomAnchor, constant: 13),
            mobileNumberTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            mobileNumberTF.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            mobileNumberTF.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(dividerSecond)
        NSLayoutConstraint.activate([
            dividerSecond.topAnchor.constraint(equalTo: mobileNumberTF.bottomAnchor, constant: 13),
            dividerSecond.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerSecond.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerSecond.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(emailLbl)
        NSLayoutConstraint.activate([
            emailLbl.topAnchor.constraint(equalTo: dividerSecond.bottomAnchor, constant: 20),
            emailLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23)
        ])
        
        whiteView.addSubview(emailTF)
        NSLayoutConstraint.activate([
            emailTF.topAnchor.constraint(equalTo: emailLbl.bottomAnchor, constant: 13),
            emailTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            emailTF.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            emailTF.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(dividerThird)
        NSLayoutConstraint.activate([
            dividerThird.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 13),
            dividerThird.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerThird.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerThird.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(userNameLbl)
        NSLayoutConstraint.activate([
            userNameLbl.topAnchor.constraint(equalTo: dividerThird.bottomAnchor, constant: 20),
            userNameLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23)
        ])
        
        whiteView.addSubview(userNameTF)
        NSLayoutConstraint.activate([
            userNameTF.topAnchor.constraint(equalTo: userNameLbl.bottomAnchor, constant: 13),
            userNameTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            userNameTF.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            userNameTF.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(dividerFourth)
        NSLayoutConstraint.activate([
            dividerFourth.topAnchor.constraint(equalTo: userNameTF.bottomAnchor, constant: 13),
            dividerFourth.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerFourth.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerFourth.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(paswordLbl)
        NSLayoutConstraint.activate([
            paswordLbl.topAnchor.constraint(equalTo: dividerFourth.bottomAnchor, constant: 25),
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
        
        whiteView.addSubview(dividerFifth)
        NSLayoutConstraint.activate([
            dividerFifth.topAnchor.constraint(equalTo: paswordTF.bottomAnchor, constant: 13),
            dividerFifth.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerFifth.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerFifth.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(repeatPaswordLbl)
        NSLayoutConstraint.activate([
            repeatPaswordLbl.topAnchor.constraint(equalTo: dividerFifth.bottomAnchor, constant: 25),
            repeatPaswordLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            repeatPaswordLbl.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: 23),
        ])
        
        whiteView.addSubview(repeatPaswordTF)
        NSLayoutConstraint.activate([
            repeatPaswordTF.topAnchor.constraint(equalTo: repeatPaswordLbl.bottomAnchor, constant: 13),
            repeatPaswordTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            repeatPaswordTF.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        whiteView.addSubview(repeatEyeImage)
        NSLayoutConstraint.activate([
            repeatEyeImage.topAnchor.constraint(equalTo: repeatPaswordLbl.bottomAnchor, constant: 16),
            repeatEyeImage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            repeatEyeImage.leadingAnchor.constraint(equalTo: repeatPaswordTF.trailingAnchor, constant: 8),
            repeatEyeImage.heightAnchor.constraint(equalToConstant: 13),
            repeatEyeImage.widthAnchor.constraint(equalToConstant: 18)
        ])
        
        whiteView.addSubview(dividerSix)
        NSLayoutConstraint.activate([
            dividerSix.topAnchor.constraint(equalTo: repeatPaswordTF.bottomAnchor, constant: 13),
            dividerSix.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerSix.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerSix.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(dontHaveAccoutnLbl)
        NSLayoutConstraint.activate([
            dontHaveAccoutnLbl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            dontHaveAccoutnLbl.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23)
        ])
        
        whiteView.addSubview(signIn)
        NSLayoutConstraint.activate([
            signIn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 5),
            signIn.leadingAnchor.constraint(equalTo: dontHaveAccoutnLbl.trailingAnchor, constant: 5)
        ])
        
        whiteView.addSubview(signUp)
        NSLayoutConstraint.activate([
            signUp.bottomAnchor.constraint(equalTo: signIn.topAnchor, constant: -6),
            signUp.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
            signUp.heightAnchor.constraint(equalToConstant: 40),
            signUp.widthAnchor.constraint(equalToConstant: 168)
        ])
    }
    
    @objc func signInTapped(sender: UIButton) {
        let vc = SignUpController()
        navigationController?.popViewController(animated: true)
    }
    
    @objc func signUpTapped(sender: UIButton) {
        checkUser()
    }
    
    func checkUser() {
        validateTF(textField: fullNameTF,
                   idLabel: fullNameLbl,
                   error: "Введите правильный login/id",
                   prompt: "Employee Id / Email")
        
        validateTF(textField: mobileNumberTF,
                   idLabel: mobileNumberLbl,
                   error: "Введите правильный номер телефона",
                   prompt: "Mobile number")
        
        validateTF(textField: emailTF,
                   idLabel: emailLbl,
                   error: "Введите правильную почту",
                   prompt: "Email")
        
        validateTF(textField: paswordTF,
                   idLabel: paswordLbl,
                   error: "Введите правильный пароль",
                   prompt: "Password")
        
        validateTF(textField: repeatPaswordTF,
                   idLabel: repeatPaswordLbl,
                   error: "Введите правильный пароль",
                   prompt: "Repeat password")
                
        if paswordTF.text?.count ?? 0 >= 6 && paswordTF.text == repeatPaswordTF.text {
            let vc = SuccessViewController()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            repeatPaswordLbl.text = "Неверный пароль"
            repeatPaswordLbl.textColor = .red
            repeatPaswordTF.layer.borderWidth = 1
            repeatPaswordTF.layer.borderColor = UIColor.red.cgColor
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
