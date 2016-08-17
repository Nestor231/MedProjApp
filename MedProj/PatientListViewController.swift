//
//  PatientListViewController.swift
//  MedProj
//
//  Created by Nestor Calizar on 8/16/16.
//  Copyright © 2016 AgileSolutions. All rights reserved.
//

import UIKit

class PatientListViewController: UITableViewController{
    
    

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet var tableview: UITableView!
    
    let patients = [(Firstname: "John", LastName:"Doe"),
                    (Firstname: "Jack", LastName:"Cussack"),
                    (Firstname: "Jill", LastName:"Denims")
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patients.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCellWithIdentifier("patientEntry", forIndexPath: indexPath) as! PatientListEntryController
        
        cell.fname.text = patients[indexPath.row].Firstname
        cell.lname.text = patients[indexPath.row].LastName
        
        return cell
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
