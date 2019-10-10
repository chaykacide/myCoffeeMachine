
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var latteButton: UIButton!
    @IBOutlet weak var capuchinoButton: UIButton!
    @IBOutlet weak var americanoButton: UIButton!
    @IBOutlet weak var addWaterButton: UIButton!
    @IBOutlet weak var addMilkButton: UIButton!
    @IBOutlet weak var addBeansButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    
    private var milkTank: Int = 200
    private var waterTank: Int = 500
    private var beansTank: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 1)
        
    }
    
    func notEnoughWater() {
        statusLabel?.text = "Не хватает воды!"
    }
    
    func notEnoughMilk() {
        statusLabel?.text = "Не хватает молока!"
    }
    
    func notEnoughBeans() {
        statusLabel?.text = "Не хватает зёрен!"
    }
    
    @IBAction func makeLatte(_ sender: UIButton) {
        let latte = CoffeeDrink(name: "Латтэ", neededWater: 300, neededMilk: 100, neededBeans: 15)
        if milkTank >= latte.neededMilk {
            milkTank = milkTank - latte.neededMilk
            if waterTank >= latte.neededWater {
                waterTank = waterTank - latte.neededWater
                if beansTank >= latte.neededBeans {
                    beansTank = beansTank - latte.neededBeans
                    statusLabel?.text = "Ваш \(latte.name), сэр!"
                } else {
                    notEnoughBeans()
                }
            } else {
                notEnoughWater()
            }
        } else {
            notEnoughMilk()
        }
    }
    
    
    @IBAction func makeCapuchino(_ sender: UIButton) {
        let capuchino = CoffeeDrink(name: "Капучино", neededWater: 200, neededMilk: 50, neededBeans: 20)
        if milkTank >= capuchino.neededMilk {
            milkTank = milkTank - capuchino.neededMilk
            if waterTank >= capuchino.neededWater {
                waterTank = waterTank - capuchino.neededWater
                if beansTank >= capuchino.neededBeans {
                    beansTank = beansTank - capuchino.neededBeans
                    statusLabel?.text = "Ваш \(capuchino.name), сэр!"
                } else {
                    notEnoughBeans()
                }
            } else {
                notEnoughWater()
            }
        } else {
            notEnoughMilk()
        }
    }
    
    @IBAction func makeAmericano(_ sender: UIButton) {
        let americano = CoffeeDrink(name: "Американо", neededWater: 100, neededMilk: 0, neededBeans: 25)
        if milkTank >= americano.neededMilk {
            milkTank = milkTank - americano.neededMilk
            if waterTank >= americano.neededWater {
                waterTank = waterTank - americano.neededWater
                if beansTank >= americano.neededBeans {
                    beansTank = beansTank - americano.neededBeans
                    statusLabel?.text = "Ваш \(americano.name), сэр!"
                } else {
                    notEnoughBeans()
                }
            } else {
                notEnoughWater()
            }
        } else {
            notEnoughMilk()
        }
    }
    
    @IBAction func addWater(_ sender: UIButton) {
        while waterTank < 500 {
            waterTank += 1
        }
        statusLabel?.text = "Вы долили воды, теперь в баке \(waterTank) мл."
    }
    
    @IBAction func addMilk(_ sender: UIButton) {
        while milkTank < 200 {
            milkTank += 1
        }
        statusLabel?.text = "Вы долили молока, теперь в баке \(milkTank) мл."
    }
    

    @IBAction func addBeans(_ sender: UIButton) {
        while beansTank < 50 {
            beansTank += 1
        }
        statusLabel?.text = "Вы досыпали зёрен, теперь в лотке \(beansTank) зёрен."
    }
    
}
