import UIKit

class ViewController: UIViewController {
    
    var newNumber1 = 0; //인스턴스 변수
    var newNumber2 = 0;

    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number_total: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reNum()
    }

    @IBAction func Retry(_ sender: Any) {
        
        let alert = UIAlertController(title: "RETRY?", message: "one : \(newNumber1), two : \(newNumber2) \n Do you want to change?", preferredStyle: .alert)
        let action = UIAlertAction(title: "GO!", style: .default, handler: { action in self.reNum()})
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func reNum() {
        let randomNumber1 = arc4random_uniform(6) + 1
        let randomNumber2 = arc4random_uniform(6) + 1
        newNumber1 = Int(randomNumber1)
        newNumber2 = Int(randomNumber2)
        number1.text = "\(newNumber1)"
        number2.text = "\(newNumber2)"
        let total = newNumber1 + newNumber2
        number_total.text = "\(total)"
    }
}

