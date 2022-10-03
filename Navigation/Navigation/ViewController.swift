//
//  ViewController.swift
//  Navigation
//
//  Created by Yuliya Lapenak on 10/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// модальное представление через функцию презент
    @IBAction func openButtonPressed() {
        //получить экран
        //создаем переменную сториборд
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // создаем переменную(экземпляр экрана) в которой хранится наш след экран по id
        let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        guard let secondViewController = destination as? SecondViewController  else {
            return }  // создаем переменную и приводим к типу SecondViewController (чтобы перейти в SecondViewController), чтобы обратиться к переменной texttttt SecondViewController
        secondViewController.texttttt = textField.text
        present(destination, animated: true)
    }
    
    @IBAction func pushButtonPressed() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        //
        guard let thirdViewController = destination as? ThirdViewController else {
            return }
        thirdViewController.texttttt = textField.text
        
        thirdViewController.delegate = self
        
        navigationController?.pushViewController(destination, animated: true)
    }
    
}


extension ViewController: ThirdViewControllerDelegate {
    func didPassData(text: String) {
        textLabel.text = text
    }
}


