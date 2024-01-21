//
//  SecondViewController.swift
//  dz1month4
//
//  Created by Акбермет Таалайбек кызы on 20/1/24.
//

import UIKit

class SuccessViewController: UIViewController {
    
    private var successImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "success")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        view.addSubview(successImage)
        NSLayoutConstraint.activate([
            successImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            successImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}
