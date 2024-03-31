//
//  ViewController.swift
//  TextFieldProgrammatically
//
//  Created by Shah Md Imran Hossain on 31/3/24.
//

import UIKit

class ViewController: UIViewController {
    let margin: CGFloat = 20
    var stackView: UIStackView!
    var liveTextButton: UIButton!
    var modalTextFieldButton: UIButton!
    var hiddenTextFieldButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupLayouts()
    }

    func setupViews() {
        stackView = makeStackView(withOrientation: .vertical, spacing: margin)
        
        liveTextButton = makeButton(withText: "Live Text Field")
        liveTextButton.addTarget(self, action: #selector(liveTextButtonPressed), for: .touchUpInside)
        
        modalTextFieldButton = makeButton(withText: "Modal Text Field")
        modalTextFieldButton.addTarget(self, action: #selector(modalTextFieldButtonPressed), for: .touchUpInside)
        
        hiddenTextFieldButton = makeButton(withText: "Hidden Text Field")
        hiddenTextFieldButton.addTarget(self, action: #selector(hiddenTextFieldButtonPressed), for: .touchUpInside)
        
        stackView.addArrangedSubview(liveTextButton)
        stackView.addArrangedSubview(modalTextFieldButton)
        stackView.addArrangedSubview(hiddenTextFieldButton)
        
        view.addSubview(stackView)
    }
    
    func setupLayouts() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            view.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: margin)
        ])
    }
}

// MARK: - Methods
extension ViewController {
    @objc func liveTextButtonPressed() {
        
    }
    
    @objc func modalTextFieldButtonPressed() {
        
    }
    
    @objc func hiddenTextFieldButtonPressed() {
        
    }
}
