//
//  SignupViewController.swift
//  firstapp
//
//  Created by STUDENT on 4/15/24.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var signup: UILabel!
    
   
    @IBOutlet weak var Firstname: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirm: UIButton!
    
    @IBOutlet weak var confirm_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ConfirmButtonpressed(_ sender: Any) {
        
        if self.ragistationValidation() == true
        {
        }else{
                let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dashboardViewController")
                self.navigationController?.pushViewController(controller, animated: true)
            }
       
        
    }
    
    
    
    
    func ragistationValidation()->Bool
    {
        if Firstname.text!.isEmpty
        {
            let alert = UIAlertController(title: "Alert", message: "please enter first name ", preferredStyle: UIAlertController.Style.alert)
            
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if lastName.text!.isEmpty
        {
            let alert = UIAlertController(title: "Alert", message: "please enter last name ", preferredStyle: UIAlertController.Style.alert)
            
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if email.text!.isEmpty
        {
            let alert = UIAlertController(title: "Alert", message: "please enter corect email ", preferredStyle: UIAlertController.Style.alert)
            
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
        else if password.text!.isEmpty
        {
            let alert = UIAlertController(title: "Alert", message: "please enter password ", preferredStyle: UIAlertController.Style.alert)
            
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
            else if password.text != confirm_password.text {
                        let alert = UIAlertController(title: "Alert", message: "Passwords do not match", preferredStyle: UIAlertController.Style.alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                        return true
                    }
                    
                     else{
                        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dashboardViewController")
                        self.navigationController?.pushViewController(controller, animated: true)
                    } 
        return true
        
    }
        
        
        func isValidEmail(_ email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
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
