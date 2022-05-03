//
//  ViewController.swift
//  I-Am-Rich-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/05/03.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "I Am Rich"
        label.textColor = .white
        
        label.font = UIFont(name: "HelveticaNeue", size: 40)
    
        return label
    }()

    
    private let titleImageView: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "diamond")
        image.contentMode = .scaleAspectFit
        
        return image
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0.14, green: 0.29, blue: 0.37, alpha: 1.00)
        
        view.addSubview(titleLabel)
        view.addSubview(titleImageView)
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 110),
            titleLabel.widthAnchor.constraint(equalToConstant: 173),
            titleLabel.heightAnchor.constraint(equalToConstant: 48),
            
            titleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 267),
            titleImageView.widthAnchor.constraint(equalToConstant: 270),
            titleImageView.heightAnchor.constraint(equalToConstant: 270),
        ])
    }
}

