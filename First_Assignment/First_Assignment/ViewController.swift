import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func Action(_ sender: Any) {
        let alert = UIAlertController(title: "Hello?", message: "This is my first assignment", preferredStyle: .alert)
        let action = UIAlertAction(title: "Happy!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
}

