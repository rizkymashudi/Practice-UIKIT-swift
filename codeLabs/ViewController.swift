//
//  ViewController.swift
//  codeLabs
//
//  Created by Rizky Mashudi on 31/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editProfileButton(_ sender: Any) {
        let alert = UIAlertController(
            title: "Are u sure want to edit this ugly profile?",
            message: "U can update your frickin profile r8 now",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "yes", style: .default) {_ in
            print("Profile changed")
        })
        
        alert.addAction(UIAlertAction(title: "No", style: .cancel) {_ in
            print("Cancel edit profile")
        })
        
        self.present(alert, animated: true)
        
    }
    
    
}

