//
//  ViewController.swift
//  Navigation
//
//  Created by Yuliya Lapenak on 10/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// модальное представление через функцию презент
    @IBAction func openButtonPressed() {
        //получить экран
        //создаем переменную сториборд
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // создаем переменную в которой хранится наш след экран по id
        let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        guard let secondViewController = destination as? SecondViewController  else {
            return }  // создаем переменную и приводим к типу SecondViewController (чтобы перейти в SecondViewController), чтобы обратиться к переменной texttttt
        secondViewController.texttttt = textField.text
        present(destination, animated: true)
    }
}

