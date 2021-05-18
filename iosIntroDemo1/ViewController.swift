//
//  ViewController.swift
//  iosIntroDemo1
//
//  Created by Qiuran on 2021/5/6.
//

import UIKit

class ViewController: UIViewController {
    let backgroundView = UIView()
    let titleLabel = UILabel()
    let symptomsTextView = UITextView()
    let covidButton = UIButton()
    let checkmarkImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstrains()
    }
    
    func setupViews() {
        view.backgroundColor = UIColor.init(red: 179 / 255, green: 27 / 255, blue: 27 / 255, alpha: 1)
        backgroundView.backgroundColor = .white
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.layer.cornerRadius = 25
        view.addSubview(backgroundView)
        
        titleLabel.text = "Check In"
        titleLabel.font = UIFont.systemFont(ofSize: 48)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        symptomsTextView.text = "People with these symptoms may have COVID-19: Fever or chills, Cough, Shortness of breath or difficulty breathing, Fatigue, Muscle or body aches, Headache, New loss of taste or smell, Sore throat, Congestion or runny nose, Nausea or vomiting, Diarrhea"
        symptomsTextView.font = UIFont.systemFont(ofSize: 16)
        symptomsTextView.textAlignment = .center
        symptomsTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(symptomsTextView)
        
        covidButton.backgroundColor = UIColor.init(red: 59 / 255, green: 102 / 255, blue: 139 / 255, alpha: 1)
        covidButton.translatesAutoresizingMaskIntoConstraints = false
        covidButton.layer.cornerRadius = 25
        covidButton.setTitle("Press if you don't have COVID", for: .normal)
        covidButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        covidButton.addTarget(self, action: #selector(turnOnGreenMode), for: .touchUpInside)
        view.addSubview(covidButton)
        
        checkmarkImageView.isHidden = true
        checkmarkImageView.translatesAutoresizingMaskIntoConstraints = false
        checkmarkImageView.image = UIImage(named: "checkmark")
//        checkmarkImageView.isHidden = true
        view.addSubview(checkmarkImageView)
    }
    
    func setupConstrains() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            symptomsTextView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            symptomsTextView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            symptomsTextView.widthAnchor.constraint(equalToConstant: 300),
            symptomsTextView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            covidButton.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 50),
            covidButton.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -50),
            covidButton.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -20),
            covidButton.heightAnchor.constraint(equalToConstant: 46)
        ])
        
        NSLayoutConstraint.activate([
            checkmarkImageView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 20),
            checkmarkImageView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            checkmarkImageView.widthAnchor.constraint(equalToConstant: 20),
            checkmarkImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    @objc func turnOnGreenMode() {
        checkmarkImageView.isHidden = false
        symptomsTextView.backgroundColor = .clear
        backgroundView.backgroundColor = UIColor.init(red: 244 / 255, green: 250 / 255, blue: 240 / 255, alpha: 1)
    }
}
