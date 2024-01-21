//
//  ForgotPasswordController.swift
//  dz1month4
//
//  Created by Акбермет Таалайбек кызы on 21/1/24.
//

import UIKit

class ForgotPasswordController: UIViewController {
    
    private var kidImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "closed")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var titleLbl: UILabel = {
        let view = UILabel()
        view.text = "Some ID"
        view.font = .systemFont(ofSize: 15, weight: .bold)
        view.textColor = .white
        view.backgroundColor = .gray
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var paswordLbl: UILabel = {
        let view = UILabel()
        view.text = "New Password"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var paswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "New Password"
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
    
    private var dividerFirst: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var repeatPaswordLbl: UILabel = {
        let view = UILabel()
        view.text = "Confirm Password"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var repeatPaswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Confirm Password"
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
    
    private var dividerSecond: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var submitBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Submit", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .systemGreen
        view.layer.cornerRadius = 15
        view.addTarget(self, action: #selector(submitBtnTapped(sender:)), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
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
            titleLbl.topAnchor.constraint(equalTo: kidImage.bottomAnchor, constant: 34),
            titleLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        view.addSubview(whiteView)
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 8),
            whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
        
        whiteView.addSubview(paswordLbl)
        NSLayoutConstraint.activate([
            paswordLbl.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 25),
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
        
        whiteView.addSubview(dividerFirst)
        NSLayoutConstraint.activate([
            dividerFirst.topAnchor.constraint(equalTo: paswordTF.bottomAnchor, constant: 13),
            dividerFirst.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerFirst.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerFirst.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(repeatPaswordLbl)
        NSLayoutConstraint.activate([
            repeatPaswordLbl.topAnchor.constraint(equalTo: dividerFirst.bottomAnchor, constant: 25),
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
        
        whiteView.addSubview(dividerSecond)
        NSLayoutConstraint.activate([
            dividerSecond.topAnchor.constraint(equalTo: repeatPaswordTF.bottomAnchor, constant: 13),
            dividerSecond.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
            dividerSecond.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
            dividerSecond.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        whiteView.addSubview(submitBtn)
        NSLayoutConstraint.activate([
            submitBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            submitBtn.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
            submitBtn.heightAnchor.constraint(equalToConstant: 40),
            submitBtn.widthAnchor.constraint(equalToConstant: 168)
        ])
    }
    
    @objc func submitBtnTapped(sender: UIButton) {
        checkUser()
    }
    
    @objc func signUpTapped(sender: UIButton) {
        let vc = SignUpController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func checkUser() {
        validateTF(textField: paswordTF,
                   idLabel: paswordLbl,
                   error: "Введите правильный password",
                   prompt: "Password")
        
        validateTF(textField: repeatPaswordTF,
                   idLabel: repeatPaswordLbl,
                   error: "Введите правильный password",
                   prompt: "Password")
        
        if paswordTF.text?.count ?? 0 >= 6, repeatPaswordTF.text?.count ?? 0 >= 6 {
            if paswordTF.text == repeatPaswordTF.text {
                let vc = SuccessViewController()
                navigationController?.pushViewController(vc, animated: true)
            } else {
                repeatPaswordLbl.text = "Введите правильный password"
                repeatPaswordLbl.textColor = .red
            }
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

