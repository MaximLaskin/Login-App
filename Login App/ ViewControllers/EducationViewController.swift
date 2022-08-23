//
//  UserEducationViewController.swift
//  Login App
//
//  Created by Swift on 22.08.2022.
//

import UIKit

final class EducationViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    
    var user: User!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackButton()
        
        cityLabel.text = user.person.education.city
        titleLabel.text = user.person.education.university
        dateLabel.text = user.person.education.expirationDate
    }
    
    //MARK: - Function
    
    private func setupBackButton() {
        backButton.backgroundColor = #colorLiteral(red: 0.06722776274, green: 0.292045963, blue: 1, alpha: 1)
        backButton.layer.cornerRadius = 10
        backButton.tintColor = .white
        backButton.setTitle("НАЗАД", for: .normal)
    }
}
