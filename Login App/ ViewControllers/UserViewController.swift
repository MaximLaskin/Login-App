//
//  UserViewController.swift
//  Login App
//
//  Created by Swift on 18.08.2022.
//

import UIKit

final class UserViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var hobbyButton: UIButton!
    @IBOutlet weak var educationButton: UIButton!

    var user: User!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()

        hobbyButton.layer.cornerRadius = 15
        educationButton.layer.cornerRadius = 15
    }

    //MARK: - Function

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "education" {
            guard let educationVC = segue.destination as? EducationViewController else { return }
            educationVC.user = user
        } else if segue.identifier == "hobby" {
            guard let educationVC = segue.destination as? HobbyViewController else { return }
            educationVC.user = user
        }
    }

    // MARK: - IBAction
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {}
}
