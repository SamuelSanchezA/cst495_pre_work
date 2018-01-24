//
//  SettingsViewController.swift
//  tip_calculator
//
//  Created by Samuel Sanchez on 1/24/18.
//  Copyright © 2018 Samuel Sanchez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet var settingsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        defaultTipControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTipControlIndex")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func onDefaultTipChange(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipControlIndex")
        defaults.synchronize()
        UIView.animate(withDuration: 0.4, animations: {
            self.settingsView.backgroundColor = UIColor.green
            self.settingsView.backgroundColor = UIColor.white
        })
    }
    
    
}
