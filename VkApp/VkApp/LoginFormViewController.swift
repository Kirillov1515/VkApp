//
//  LoginFormViewController.swift
//  VkApp
//
//  Created by Macbook on 14.04.2021.
//

import UIKit

class LoginFormViewController: UIViewController {

    let signInSegue = "SignInSegue"
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Sign in implementation
    
    @IBAction func signInAction(_ sender: Any) {
        if checkUserData() {
            performSegue(withIdentifier: signInSegue, sender: self)
        } else {
            showAlertWindow()
        }
    }
    
    func checkUserData() -> Bool {
        if let login = loginTextField.text, let password = passwordTextField.text {
            if login == "" && password == "" {
                return true
            }
        }
        return false
    }
    
    func showAlertWindow() {
        let alert = UIAlertController(title: "Error", message: "Wrong user name or password", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    //MARK: - Exit to this controller action
    
    @IBAction func exitToLoginForm(unwindSegue: UIStoryboardSegue) {
    }
}
