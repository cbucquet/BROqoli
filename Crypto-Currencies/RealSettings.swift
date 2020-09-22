//
//  RealSettings.swift
//  MoniPulse
//
//  Created by Charles on 5/20/17.
//  Copyright © 2017 bucquet. All rights reserved.
//

import UIKit

class RealSettings: UIViewController {

    
    @IBAction func call(_ sender: Any) {
        _ = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(callSet), userInfo: nil, repeats: false)
    }
    
    @IBAction func call2(_ sender: Any) {
        _ = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(callSet), userInfo: nil, repeats: false)
    }
    @IBOutlet var switches: [UISwitch]!
    @IBOutlet weak var currency: UISegmentedControl!
    @IBOutlet var labels: [UILabel]!
    @IBOutlet var textfields: [UITextField]!
    
    
    @IBOutlet weak var Search: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        var nbfilter = 0
        
        for _ in 1...3 {
            vsettings.labels[nbfilter].text = filterdItemsArray[nbfilter]
            for show in allthecryptos {
                if show.realname.lowercased() == filterdItemsArray[nbfilter].lowercased(){
                    vsettings.switches[nbfilter].isOn = show.show
                    vsettings.textfields[nbfilter].text = String(show.userMoney)
                }
            }
            vsettings.textfields[nbfilter].isHidden = false
            vsettings.switches[nbfilter].isHidden = false
            vsettings.labels[nbfilter].isHidden = false
            nbfilter += 1
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(callSet), userInfo: nil, repeats: false)
        
        //var settingsPage = false
               
        // Do any additional setup after loading the view.
    }
    
    func callSet(){
        //ViewController().filterContentForSearchText(searchText: Search.text!)

        ViewController().SettingsUpdate()
        //ViewController().filterContentForSearchText(searchText: Search.text!)

    }
  
    @IBAction func SearchAct(_ sender: Any) {
        ViewController().filterContentForSearchText(searchText: Search.text!)
    }
    
}
