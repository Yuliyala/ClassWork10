//
//  ThirdViewController.swift
//  Navigation
//
//  Created by Yuliya Lapenak on 10/3/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var texttttt: String?
    
    weak var delegate: ThirdViewControllerDelegate?
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "hgkhgkhgkgkgkg"
        textLabel.text = texttttt
        
        self.navigationItem.setHidesBackButton(true, animated: true)    // убрать кнопку back
    }
    
    @IBAction func popBackButtonPressed() {
        delegate?.didPassData(text: "gkhgkhkhgkgkgkkgkghkh")
        navigationController?.popViewController(animated: true)
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

//
protocol ThirdViewControllerDelegate: AnyObject {
    func didPassData(text: String)
}
