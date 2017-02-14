//
//  ShoppingListTableViewController.swift
//  Shopping List
//
//  Created by student on 14/02/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit



@objc(ShoppingListTableViewController)class ShoppingListTableViewController: UITableViewController {

    var shoppingItems: NSMutableArray = []
    
    func loadInitialData(){
        
        var item1 = ShoppingItem(name: "Milk")
        self.shoppingItems.addObject(item1)
        
        var item2 = ShoppingItem(name: "Eggs")
        self.shoppingItems.addObject(item2)
        
        var item3 = ShoppingItem(name: "Book")
        self.shoppingItems.addObject(item3)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func numberOfSectionsInTableView(in tableView: UITableView!) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    override func tableView(_ tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.shoppingItems.count
    }
    
    
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath:
        
        NSIndexPath!) -> UITableViewCell! {
        
        
        let CellIndentifier: NSString = "ListPrototypeCell"
        
        var cell : UITableViewCell
            
            =tableView.dequeueReusableCellWithIdentifier(CellIndentifier) as UITableViewCell
        
        var shoppingitem: ShoppingItem = self.shoppingItems.objectAtIndex(indexPath.row) as ShoppingItem
        
        cell.textLabel.text = shoppingitem.itemName
        
        return cell
        
        if shoppingitem.completed{
            
            cell.accessoryType = .Checkmark
            
        }
            
        else{
            
            cell.accessoryType = .None
            
        }
        
    }
    
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath:
        
        NSIndexPath!) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        var tappedItem: ShoppingItem = self.shoppingItems.objectAtIndex(indexPath.row) as
            
        ShoppingItem
        
        tappedItem.completed = !tappedItem.completed
        
        tableView.reloadData()
        
    }

    

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
