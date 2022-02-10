//
//  ViewController.swift
//  On_The_Map
//
//  Created by Jandrè Hattingh on 2021/12/07.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    @IBAction func LoginTapped(_ sender: UIButton) {
        OnTheMapClient.login(username: emailTextField.text!, password: passwordTextField.text!, completion: handleLoginResponse(success:error:))
        
    }
    
    func handleLoginResponse(success: Bool, error: Error?) {
        if success {
            //performSegue(withIdentifier: "completeLogin", sender: nil)
            print("Success")
        } else {
            print("Fail")
            print(error?.localizedDescription ?? "")
        }
    }
}

