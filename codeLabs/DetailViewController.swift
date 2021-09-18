//
//  DetailViewController.swift
//  codeLabs
//
//  Created by Rizky Mashudi on 01/08/21.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descLable: UILabel!
    
    //menampung data temp
    var detail: (title: String?, desc: String?, image: UIImage?)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLable.text = detail.title
        imageView.image = detail.image
        descLable.text = detail.desc
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
