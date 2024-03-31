//
//  ViewController.swift
//  TextFieldProgrammatically
//
//  Created by Shah Md Imran Hossain on 31/3/24.
//

import UIKit

class ViewController: UIViewController {
    var myTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupLayouts()
    }

    func setupViews() {
        myTextField = makeTextField(withPlaceholderText: "Write somethig")
        view.addSubview(myTextField)
    }
    
    func setupLayouts() {
        NSLayoutConstraint.activate([
            myTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

