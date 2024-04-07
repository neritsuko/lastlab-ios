import UIKit

protocol ThirdViewControllerDelegate: AnyObject {
    func sendDataBackToFirstViewController(data: String)
}

class ViewController: UIViewController, ThirdViewControllerDelegate {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondViewController" {
            if let secondViewController = segue.destination as? SecondViewController {
                secondViewController.receivedData = "Hello from First View Controller!"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let goToSecondButton = UIButton(type: .system)
        goToSecondButton.setTitle("Next", for: .normal)
        goToSecondButton.addTarget(self, action: #selector(goToSecondScreen), for: .touchUpInside)
        goToSecondButton.frame = CGRect(x: 50, y: 200, width: 300, height: 50)
        view.addSubview(goToSecondButton)
    }
    
    @objc func goToSecondScreen() {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    // Метод делегата для получения данных от ThirdViewController
    func sendDataBackToFirstViewController(data: String) {
        print("Received data from Third View Controller: \(data)")
    }
}

class ThirdViewController: UIViewController {
    weak var delegate: ThirdViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let goToThirdButton = UIButton(type: .system)
        goToThirdButton.setTitle("Go to Third Screen", for: .normal)
        goToThirdButton.addTarget(self, action: #selector(goToThirdScreen), for: .touchUpInside)
        goToThirdButton.frame = CGRect(x: 50, y: 200, width: 300, height: 50)
        view.addSubview(goToThirdButton)
    }
    
    @objc func goToThirdScreen() {
        let thirdVC = ThirdViewController()
        thirdVC.modalTransitionStyle = .crossDissolve
        thirdVC.delegate = self
        present(thirdVC, animated: true, completion: nil)
    }
}
