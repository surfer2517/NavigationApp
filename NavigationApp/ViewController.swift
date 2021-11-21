//
//  ViewController.swift
//  NavigationApp
//
//  Created by Ivan Rybkin on 03.11.2021.
//

import UIKit

class ViewController: UIViewController {

        // Ссылка на сториборд, где размещен данный ViewController
        let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)

        // ...

    // Перейти к зеленой сцене
    @IBAction func toGreenScene(_ sender: UIButton) {
        // получаем ссылку на следующий контроллер
       // в данном случае слудующий - это зеленый
        let nextViewController = storyboardInstance.instantiateViewController(identifier: "greenViewController")
        // ОБращаемся к Navigation Controller
        // И вызываем метод перехода к новому контроллеру
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

    // Перейти к желтой сцене
    @IBAction func toYellowScene(_ sender: UIButton) {
        // получаем ссылку на следующий контроллер
       // в данном случае слудующий - это зеленый
        let nextViewController = storyboardInstance.instantiateViewController(identifier: "yellowViewController")
        // ОБращаемся к Navigation Controller
        // И вызываем метод перехода к новому контроллеру
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

    // Перейти к корневой сцене
    @IBAction func toRootScene(_sender: UIButton) {
        // Обращаемся к Navigation Controller
        // И вызываем метод перехода к корневому котроллеру
        self.navigationController?.popToRootViewController(animated: true)
    }

    // перейти к предыдущему экрану
    @IBAction func toPreviousScene(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
