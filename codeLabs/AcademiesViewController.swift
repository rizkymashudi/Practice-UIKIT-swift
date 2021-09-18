//
//  AcademiesViewController.swift
//  codeLabs
//
//  Created by Rizky Mashudi on 01/08/21.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var AndroidDev: UIStackView!
    @IBOutlet weak var UnityDev: UIStackView!
    @IBOutlet weak var CloudDev: UIStackView!
    @IBOutlet weak var ARVRDev: UIStackView!
    
    //nampung data item
    var academies = [("Android Developer", "Lorem ipsum", UIImage(named: "android")),
                     ("Unity Game Developer", "Lorem ipsum", UIImage(named: "unity")),
                     ("AR / VR Developer", "Lorem ipsum", UIImage(named: "arvr")),
                     ("Cloud Developer", "Lorem ipsum", UIImage(named: "cloud")),
                     ("Lorem ipsum dolor sit amet", "Lorem ipsum", UIImage(named: "android"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTapped(parameter: &AndroidDev)
        addTapped(parameter: &UnityDev)
        addTapped(parameter: &CloudDev)
        addTapped(parameter: &ARVRDev)
    }
    
    
    func addTapped(parameter: inout UIStackView){
        //add gesture tap
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer){
        //digunakan menginisialisasi DetailViewController
        guard let controller = UIStoryboard(
                        name: "Main",
                        bundle: nil
                ).instantiateViewController(
                    withIdentifier: "DetailViewController"
                ) as? DetailViewController else { return }
        
        //menentukan stackview mana yang dipilih
        switch gesture.view as? UIStackView {
        case AndroidDev:
            controller.detail = academies[0]
        case UnityDev:
            controller.detail = academies[1]
        case ARVRDev:
            controller.detail = academies[2]
        case CloudDev:
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        
        //pindah page
        self.present(controller, animated: true, completion: nil)
        
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
