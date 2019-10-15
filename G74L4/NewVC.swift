
import UIKit

class NewVC: UIViewController {

    @IBOutlet weak var addWater: UIButton!
    @IBOutlet weak var addMilk: UIButton!
    @IBOutlet weak var addBeans: UIButton!
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
    
    @IBAction func addWaterButton(_ sender: UIButton) {
        statusLabel?.text = coffeeMaker.addWater()
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
    @IBAction func addMilkButton(_ sender: UIButton) {
        statusLabel?.text = coffeeMaker.addMilk()
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
    @IBAction func addBeansButton(_ sender: UIButton) {
        statusLabel?.text = coffeeMaker.addBeans()
        ingrStatus?.text = coffeeMaker.ingrStatusChecker()
    }
    
}
