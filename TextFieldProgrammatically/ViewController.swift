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
//        stackView.distribution = .equalCentering
        
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
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            view.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: margin),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
//            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
//            view.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: margin),
//            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: margin)
//        ])
    }
}

// MARK: - Methods
extension ViewController {
    @objc func liveTextButtonPressed() {
        let liveTextViewController = LiveTextViewController()
        // without fullscreen presentation style it will present as a card
        // at top of the current view
        // just comment the following line and run it to see in action
        liveTextViewController.modalPresentationStyle = .fullScreen
        present(liveTextViewController, animated: true, completion: nil)
    }
    
    @objc func modalTextFieldButtonPressed() {
        let liveTextViewController = LiveTextViewController()
        present(liveTextViewController, animated: true, completion: nil)
    }
    
    @objc func hiddenTextFieldButtonPressed() {
        
    }
}
