//
//  ListTableViewController.swift
//  BasicTableView
//
//  Created by Ryo Makabe on 2016-08-04.
//  Copyright © 2016 ryomakabe. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
	
	// MARK: Properties
	
	var data = [Data]()

    override func viewDidLoad() {
        super.viewDidLoad()
		
		navigationItem.leftBarButtonItem = editButtonItem()
		navigationItem.leftBarButtonItem?.tintColor = UIColor.whiteColor()

		loadInitialData()
    }
	
	func loadInitialData() {
		let alberta = Data(name: "Alberta")
		let bc = Data(name: "BC")
		let manitoba = Data(name: "Manitoba")
		let newBrunswick = Data(name: "New Brunswick")
		let newFoundland = Data(name: "Newfoundland")
		let novaScotia = Data(name: "Nova Scotia")
		let ontario = Data(name: "Ontario")
		let pei = Data(name: "Prince Edward Island")
		let quebec = Data(name: "Quebec")
		let saskatchewan = Data(name: "Saskatchewan")
		
		data += [alberta, bc, manitoba, newBrunswick, newFoundland, novaScotia, ontario, pei, quebec, saskatchewan]
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

	
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cellIdentifier = "DataTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! DataTableViewCell
		
		let data = self.data[indexPath.row]
		
		cell.nameLabel.text = data.name
		
        return cell
    }
	
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
	
    // Override to support editing the table view.
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
		if editingStyle == .Delete {
			// Delete the row from the data source
			data.removeAtIndex(indexPath.row)
			tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
		} else if editingStyle == .Insert {
			// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
		}
	}


    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dataDetailViewController = segue.destinationViewController as! DetailViewController
		if let selectedDataCell = sender as? DataTableViewCell {
			let indexPath = tableView.indexPathForCell(selectedDataCell)!
			let selectedData = data[indexPath.row]
			dataDetailViewController.data = selectedData
			
		}
    }


}
