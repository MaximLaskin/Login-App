//
//  WelcomePageViewController.swift
//  Login App
//
//  Created by Swift on 12.08.2022.
//

import UIKit

class WelcomePageViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!

    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLogOutButton()
        setupWelcomeLabel()



    }

    private func setupWelcomeLabel() {
        welcomeLabel.text = userName
    }
    
    private func setupLogOutButton() {
        logOutButton.layer.cornerRadius = 15
    }





}
