//
//  ViewController.swift
//  FireWork
//
//  Created by ddukk18 on 22/11/22.
//

import UIKit
import FirebaseAuth
class ViewController: UIViewController {

    @IBOutlet weak var fstPass: UITextField!
    @IBOutlet weak var fstName: UITextField!
    @IBOutlet weak var txtMsg: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Login(_ sender: Any) {
        let fName = fstName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let Ename = fstPass.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        Auth.auth().signIn(withEmail: fName, password: Ename){(AuthDataResult,error)in
            if error != nil{
                self.txtMsg.text = "Error..!"
            }
            else{
                let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "newWRK") as! thirdViewController
                self.present(homeVC, animated: true)
            }
        }
    }
    
    @IBAction func creatAcc(_ sender: Any) {
    }
}

