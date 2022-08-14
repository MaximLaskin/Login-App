//
//  ViewController.swift
//  Login App
//
//  Created by Swift on 12.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {

// MARK: - IBOutlets

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!

// MARK: - Private propertyes

    private let userLogin = "Maxim"
    private let userPassword = "12345"

    private var currentLogin: String!
    private var currentPassword: String!

// MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoInButton()
    }

//MARK: - Function

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomePageVC = segue.destination as? WelcomePageViewController else { return}
        welcomePageVC.userName = "Welcome, \(userNameTF.text ?? "")!" //  "welcome \(userNameTF.text ?? "")" - с этой строчкой помог компилятор
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event) // не работает
    }

    private func setupLoInButton() {
        logInButton.layer.cornerRadius = 15
    }

// MARK: - IBAction

    @IBAction func logInButtonPressed() {
//        if currentLogin == userLogin && currentPassword == userPassword {
//            showAlert(with: "Sucsessful", and: "Доступ разрешен!") // не работает условие
//
//        } else {
//            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
//        }
    }

    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oh no!🗿 ", and: "Your name is \(userLogin)")
    }

    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Ooops!😑", and: "Your password is \(userPassword)")
    }

    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
    }
}

// MARK: - UIAllertController

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
        }

        alert.addAction(okAction)

        present(alert, animated: true)
    }
}
