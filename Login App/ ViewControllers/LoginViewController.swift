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

    private let user = User.getUserData()

// MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoInButton()
    }

//MARK: - Function

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }

        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomePageViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let userInfoVC = navigationVC.topViewController as? UserViewController else { return }
                userInfoVC.user = user
            }
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    private func setupLoInButton() {
        logInButton.layer.cornerRadius = 15
    }

// MARK: - IBAction

    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }

    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Oh no!🗿 ", message: "Your name is \(user.login)")
    }

    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Ooops!😑", message: "Your password is \(user.password)")
    }

    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = "" // при возвращении обратно обнуляем значения
    }
}

// MARK: - UIAllertController

extension LoginViewController {
    private func showAlert(title: String,message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }

        alert.addAction(okAction)

        present(alert, animated: true)
    }
}
