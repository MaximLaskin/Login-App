//
//  HobbyViewController.swift
//  Login App
//
//  Created by Swift on 22.08.2022.
//

import UIKit

final class HobbyViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var hobbyTitleLabel: UILabel!
    @IBOutlet weak var descriptionHobbyLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!

    var user: User!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackButton()
        
        hobbyTitleLabel.text = user.person.hobby.title
        descriptionHobbyLabel.text = user.person.hobby.description
    }

    //MARK: - Function

    private func setupBackButton() {
        backButton.backgroundColor = #colorLiteral(red: 0.06722776274, green: 0.292045963, blue: 1, alpha: 1)
        backButton.layer.cornerRadius = 10
        backButton.tintColor = .white
        backButton.setTitle("НАЗАД", for: .normal)
    }
}
