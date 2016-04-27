//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by David Yuan on 4/26/16.
//  Copyright © 2016 David Yuan. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var labeltext : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        for index in 0...labeltext.count-1 {
            label.text = label.text! + labeltext[index]
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController: ViewController = segue.destinationViewController as! ViewController
        DestViewController.history = labeltext
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
