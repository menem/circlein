//
//  CreateAccountViewController.swift
//  circlein
//
//  Created by Menem Ragab on 12/30/18.
//  Copyright © 2018 Menem Ragab. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var userAvatarImageView: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

    @IBAction func pickAvatarButtonPressed(_ sender: Any) {
    }
    @IBAction func pickBGColorButtonPressed(_ sender: Any) {
    }

    @IBAction func createAccountButtonPressed(_ sender: Any) {
        guard let email = emailTextField.text , emailTextField.text != "" else
        { return }
        guard let password = passwordTextField.text, passwordTextField.text != "" else
        { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success  {
                print("User Registered Successfully")
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
