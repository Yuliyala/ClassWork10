//
//  SecondViewController.swift
//  Navigation
//
//  Created by Yuliya Lapenak on 10/3/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var texttttt: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = texttttt
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
