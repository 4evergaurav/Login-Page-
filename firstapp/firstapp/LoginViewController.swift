//
//  SsViewController.swift
//  firstapp
//
//  Created by STUDENT on 4/10/24.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
    
    
    
    
    @IBOutlet weak var loginpage: UILabel!
    
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var submit: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    }
    
    
    
    
    @IBAction func SubmitButtonPressed(_ sender: Any) {
        
        if email.text == ""{
            let alert = UIAlertController(title: "Alert", message: "incorrect email ", preferredStyle: UIAlertController.Style.alert)
            
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
        }
        else if password.text == ""{
            let alert = UIAlertController(title: "Alert", message: "incorrect password", preferredStyle: UIAlertController.Style.alert)
            
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if !self.isValidEmail(email.text ?? "")
        {
            
        }else{
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dashboardViewController")
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
     func textField(_ textField: UITextField,shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if string == ""{
            return true
        }
        if textField == email{
            
            if textField.text?.count ?? 0>30{
                return false
            }
        
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
