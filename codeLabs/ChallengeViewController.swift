//
//  ChallengeViewController.swift
//  codeLabs
//
//  Created by Rizky Mashudi on 01/08/21.
//

import UIKit

class ChallengeViewController: UIViewController {
    @IBOutlet weak var arChallenge: UIStackView!
    @IBOutlet weak var guestBookChallenge: UIStackView!
    @IBOutlet weak var eduChallenge: UIStackView!
    @IBOutlet weak var flutterChallenge: UIStackView!
    @IBOutlet weak var webChallenge: UIStackView!
    
    var challenges = [("Create your AR experience", "Lorem ipsum", UIImage(named: "ar")),
                     ("Digital Guest Book", "Lorem ipsum", UIImage(named: "digital")),
                     ("Expert Developer on Education impact applications", "Lorem ipsum", UIImage(named: "expert")),
                     ("Create beautiful apps using flutter", "Lorem ipsum", UIImage(named: "flutter")),
                     ("Dicoding Web Master", "Lorem ipsum", UIImage(named: "web")),
                     ("Lorem ipsum dolor sit amet", "Lorem ipsum", UIImage(named: "ar"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTapped(parameter: &arChallenge)
        addTapped(parameter: &guestBookChallenge)
        addTapped(parameter: &eduChallenge)
        addTapped(parameter: &flutterChallenge)
        addTapped(parameter: &webChallenge)
        // Do any additional setup after loading the view.
    }
    
    func addTapped(parameter: inout UIStackView){
        //tambah gesture tap
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    
    @objc func objectTapped(gesture: UIGestureRecognizer){
        //aksi setelah gesture tap
        guard let controller = UIStoryboard(
            name: "Main", bundle: nil
        ).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        
        //menentukan stack view yang dipilih
        switch gesture.view as? UIStackView {
        case arChallenge:
            controller.detail = challenges[0]
        case guestBookChallenge:
            controller.detail = challenges[1]
        case eduChallenge:
            controller.detail = challenges[2]
        case flutterChallenge:
            controller.detail = challenges[3]
        case webChallenge:
            controller.detail = challenges[4]
        default:
            controller.detail = challenges[5]
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
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
