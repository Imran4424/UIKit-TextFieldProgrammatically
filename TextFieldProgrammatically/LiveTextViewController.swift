//
//  LiveTextViewController.swift
//  TextFieldProgrammatically
//
//  Created by Shah Md Imran Hossain on 1/4/24.
//

import UIKit

class LiveTextViewController: UIViewController {
    var statusLabel: UILabel!
    var myTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupLayouts()
    }
    
    func setupViews() {
        statusLabel = makeLabel(withText: "Write Something", size: 25, color: .red)
        statusLabel.backgroundColor = .clear
        
        myTextField = makeTextField(withPlaceholderText: "Write somethig")
        myTextField.delegate = self
        
        view.addSubview(statusLabel)
        view.addSubview(myTextField)
    }
    
    func setupLayouts() {
        NSLayoutConstraint.activate([
            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statusLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            myTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 20),
            myTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

extension LiveTextViewController: UITextFieldDelegate {
    // Implement UITextFieldDelegate method to detect text changes
    func textFieldDidChangeSelection(_ textField: UITextField) {
        // Update label with text field's text
        statusLabel.text = textField.text
    }
}
