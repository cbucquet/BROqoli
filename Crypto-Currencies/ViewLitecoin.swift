//
//  ViewLitecoin.swift
//  MoniPulse
//
//  Created by Charles on 6/19/17.
//  Copyright © 2017 bucquet. All rights reserved.
//

import UIKit

class ViewLitecoin: UIViewController {

    @IBOutlet weak var wallet: UILabel!
    @IBOutlet weak var marketvalue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var augmente: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var currency: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
