//
//  WelcomePageViewController.swift
//  Login App
//
//  Created by Swift on 12.08.2022.
//
import UIKit

final class WelcomePageViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        setupLogOutButton()
        setupWelcomeLabel()
    }
    
    //MARK: - Function
    
    private func setupWelcomeLabel() {
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
    
    private func setupLogOutButton() {
        logOutButton.layer.cornerRadius = 15
    }
}
