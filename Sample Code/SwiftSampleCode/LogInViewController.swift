//
//  LogInViewController.swift
//  DJISDKSwiftDemo
//
//  Created by Hye Sun Hong on 6/27/17.
//  Copyright © 2017 DJI. All rights reserved.
//

import UIKit

class LoginToStartupViewSegue : UIStoryboardSegue{
    
}

class LogInViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    var loginsuccess = false
    
    
    @IBAction func hitLoginButton(_ sender: Any) {
        let email = emailTextField.text
        let password = passwordTextField.text
        
        if (email!.isEmpty || password!.isEmpty){
            print("Email or password field empty.")
            return
        }
        
       
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func emailDidEndOnExit(_ sender: Any) {
            self.view.endEditing(true);
    }
    
    @IBAction func passwordDidEndOnExit(_ sender: Any) {
            self.view.endEditing(true);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
