import UIKit

class SecondViewController: UIViewController {
    var receivedData: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = receivedData {
            print("Received Data: \(data)")
        }
    }
    
    class SecondViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()

            let backButton = UIButton(type: .system)
            backButton.setTitle("Back", for: .normal)
            backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
            backButton.frame = CGRect(x: 50, y: 200, width: 100, height: 50)
            view.addSubview(backButton)
        }
        
        @objc func goBack() {
            navigationController?.popViewController(animated: true)
        }
    }

    class SecondViewController1: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture))
            swipeGesture.direction = .right
            view.addGestureRecognizer(swipeGesture)
        }

        @objc func handleSwipeGesture() {
            navigationController?.popViewController(animated: true)
        }
    }

}
