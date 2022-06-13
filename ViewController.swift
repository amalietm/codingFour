//
//  ViewController.swift
//  codingFourAppDevelopment
//
//  Created by Amalie Morch on 28/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindToLaunch(unwindSegue: UIStoryboardSegue){
    } // go back to first screen

    
    @IBAction func alertButton(_ sender: Any) {

        let alert = UIAlertController(title: "Coming", message: "This information is to come.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}

