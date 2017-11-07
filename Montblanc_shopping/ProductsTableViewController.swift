//
//  ProductsTableViewController.swift
//  Montblanc_shopping
//
//  Created by Alex Hsieh on 2017/11/6.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    var item1Price = 265
    var item1Qty = 0
    
    @IBOutlet weak var item1QtyLabel: UILabel!
    @IBOutlet weak var item1Stepper: UIStepper!
    @IBAction func item1Stepper(_ sender: UIStepper) {
        item1Qty = Int(sender.value)
        item1QtyLabel.text = "\(item1Qty)"
        total()
    }
    
    
    var item2Price = 315
    var item2Qty = 0
    
    @IBOutlet weak var item2QtyLabel: UILabel!
    @IBOutlet weak var item2Stepper: UIStepper!
    @IBAction func item2Stepper(_ sender: UIStepper) {
        
        item2Qty = Int(sender.value)
        item2QtyLabel.text = "\(item2Qty)"
        total()
    }
    
    
    var item3Price = 320
    var item3Qty = 0
    @IBOutlet weak var item3QtyLabel: UILabel!
    @IBOutlet weak var item3Stepper: UIStepper!
    @IBAction func item3Stepper(_ sender: UIStepper) {
        
        item3Qty = Int(sender.value)
        item3QtyLabel.text = "\(item3Qty)"
        total()
    }
    
    
    var item4Price = 445
    var item4Qty = 0
    @IBOutlet weak var item4QtyLabel: UILabel!
    @IBOutlet weak var item4Stepper: UIStepper!
    @IBAction func item4Stepper(_ sender: UIStepper) {
        
        item4Qty = Int(sender.value)
        item4QtyLabel.text = "\(item4Qty)"
        total()
    }
    
    var sum = 0
    func total(){
        sum = item1Qty * item1Price + item2Qty * item2Price + item3Qty * item3Price + item4Qty * item4Price
        totalLabel.text = "\(sum)"
    }
    
    @IBAction func resetButton(_ sender: Any) {
        item1Qty = 0
        item1QtyLabel.text = "0"
        item1Stepper.value = 0
        
        item2Qty = 0
        item2QtyLabel.text = "0"
        item2Stepper.value = 0
        
        item3Qty = 0
        item3QtyLabel.text = "0"
        item3Stepper.value = 0
        
        item4Qty = 0
        item4QtyLabel.text = "0"
        item4Stepper.value = 0
        
        sum = 0
        total()
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
 */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
