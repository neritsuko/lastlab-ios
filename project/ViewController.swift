import UIKit

class ViewController: UIViewController {
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
}
