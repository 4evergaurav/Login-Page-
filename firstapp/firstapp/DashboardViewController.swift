//
//  DashboardViewController.swift
//  firstapp
//
//  Created by STUDENT on 4/15/24.
//

import UIKit

class DashboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let rowsArray =
    [["name":"Gaurav"],["name":"sandeep"],["name":"manjeeth"],["name":"birender"],["name":"sandeep"],["name":"manjeeth"],["name":"birender"]]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dashTableViewCell", for: indexPath) as! DashTableViewCell
        
        cell.nameLabel.text = self.rowsArray[indexPath.row]["name"]
        return cell
    }
    
    
    

    @IBOutlet weak var dashTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
