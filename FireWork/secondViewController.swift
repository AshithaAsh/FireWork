//
//  secondViewController.swift
//  FireWork
//
//  Created by ddukk18 on 22/11/22.
//

import UIKit
import FirebaseAuth
class secondViewController: UIViewController {

    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }
    

    @IBAction func register(_ sender: Any) {
       
        let userEmail = email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let passWord = pass.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        Auth.auth().createUser(withEmail: userEmail, password: passWord) {( AuthDataResult , error) in
            if error != nil
            {
                print( error as Any )
            }
            else
            {
                print("Created Succesfully")
                self.TransitionHome()
            }
                       
        }
                       
        
    }
                       
    
    func TransitionHome()
    {
                let homeVC = storyboard?.instantiateViewController(withIdentifier: "newWRK") as! thirdViewController
                present(homeVC, animated: true)
            }
}
