//
//  DetailViewController.swift
//  BasicTableView
//
//  Created by Ryo Makabe on 2016-08-05.
//  Copyright © 2016 ryomakabe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UINavigationControllerDelegate {

	@IBOutlet weak var nameLabel: UILabel!
	
	var data: Data?
	
    override func viewDidLoad() {
        super.viewDidLoad()

		if let data = data {
			navigationItem.title = data.name
			nameLabel.text = data.name
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
