//
//  SignUpViewController.swift
//  DJISDKSwiftDemo
//
//  Created by Hye Sun Hong on 6/27/17.
//  Copyright © 2017 DJI. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var userEmailTextField: UITextField!

    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!

    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userRepeatPassword = repeatPasswordTextField.text
        var segueShouldOccur = false

        // check for empty fields
        if (userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty){
            // alert message
            print("All fields are required.")
            return
        }
        if (userPassword != userRepeatPassword){
            // alert message
            print("passwords do not match")
            return
        }else {
//            segueShouldOccur=true
//            let vc = SignUpViewController() //change this to your class name
//            self.present(vc, animated: true, completion: nil)
        }


    }
        // store data

        // display alert msg with confirmation
    
    func resetUI() {
//        self.registerButton.isEnabled = false;
    }
    
   
    // "DidEndOnExit" used to hide keyboard after typing.
    @IBAction func emailDidEndOnExit(_ sender: Any) {
        self.view.endEditing(true);

    }

    @IBAction func passwordDidEndOnExit(_ sender: Any) {
        self.view.endEditing(true);

    }
    
    @IBAction func repeatPasswordDidEndOnExit(_ sender: Any) {
        self.view.endEditing(true);
        if (repeatPasswordTextField.text == userPasswordTextField.text){
//                        let vc = SignUpViewController() //change this to your class name
//                        self.present(vc, animated: true, completion: nil)
            
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc: UIViewController = storyboard.instantiateViewController(withIdentifier: "myVCID") as UIViewController
//            self.presentViewController(vc, animated: true, completion: nil)
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
            self.present(vc, animated: true, completion: nil)
        print("Hallelujah!")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.resetUI()


        // Do any additional setup after loading the view.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
