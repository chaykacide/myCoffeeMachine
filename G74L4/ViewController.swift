
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var makeLatte: UIButton!
    @IBOutlet weak var makeCapuchino: UIButton!
    @IBOutlet weak var makeAmericano: UIButton!
    @IBOutlet weak var makeMokko: UIButton!
    @IBOutlet weak var ingrStatus: UILabel!
    @IBOutlet weak var statusLabel: UILabel!

    var coffeeMaker = CoffeeMachine(name: "CoffeeMaker")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
        
    }
    
    @IBAction func makeLatte(_ sender: UIButton) {
        statusLabel?.text = coffeeMaker.makeLatte()
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
    @IBAction func makeCapuchino(_ sender: UIButton) {
        statusLabel?.text = coffeeMaker.makeCapuchino()
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
    @IBAction func makeAmericano(_ sender: UIButton) {
        statusLabel?.text = coffeeMaker.makeAmericano()
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
    @IBAction func makeMokko(_ sender: UIButton) {
        statusLabel?.text = coffeeMaker.makeMokko()
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
    @IBAction func refreshStatusButton(_ sender: UIButton) {
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
    
    @IBAction func addButton(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
}
