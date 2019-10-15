import UIKit
class CoffeeMachine: NSObject {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    struct CoffeeMachineTanks {
        static var waterTank = 500
        static var milkTank = 300
        static var beansTank = 50
    }
    
    private let waterForCapuchino = 200
    private let milkForCapuchino = 125
    private let beansForCapuchino = 15
    
    private let waterForAmericano = 125
    private let milkForAmericano = 0
    private let beansForAmericano = 12
    
    private let waterForLatte = 250
    private let milkForLatte = 150
    private let beansForLatte = 17
    
    private let waterForMokko = 150
    private let milkForMokko = 225
    private let beansForMokko = 11
    
    func makeCapuchino() -> String {
        var done = ""
        if CoffeeMachineTanks.waterTank >= waterForCapuchino &&
            CoffeeMachineTanks.milkTank >= milkForCapuchino &&
            CoffeeMachineTanks.beansTank >= beansForCapuchino {
            done = cupOfCapuchino()
        }
        else if CoffeeMachineTanks.waterTank < waterForCapuchino {
            done = "Не хватает воды."
        }
        else if CoffeeMachineTanks.milkTank < milkForCapuchino {
            done = "Не хватает молока."
        }
        else if CoffeeMachineTanks.beansTank < beansForCapuchino {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfCapuchino() -> String {
        CoffeeMachineTanks.waterTank -= waterForCapuchino
        CoffeeMachineTanks.milkTank -= milkForCapuchino
        CoffeeMachineTanks.beansTank -= beansForCapuchino
        return "Ваше Капучино, сэр!"
    }
    
    func makeAmericano() -> String {
        var done = ""
        if CoffeeMachineTanks.waterTank >= waterForAmericano &&
            CoffeeMachineTanks.milkTank >= milkForAmericano &&
            CoffeeMachineTanks.beansTank >= beansForAmericano {
            done = cupOfAmericano()
        } else if CoffeeMachineTanks.waterTank < waterForAmericano {
            done = "Не хватает воды."
        } else if CoffeeMachineTanks.milkTank < milkForAmericano {
            done = "Не хватает молока."
        } else if CoffeeMachineTanks.beansTank < beansForAmericano {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfAmericano() -> String {
        CoffeeMachineTanks.waterTank -= waterForAmericano
        CoffeeMachineTanks.milkTank -= milkForAmericano
        CoffeeMachineTanks.beansTank -= beansForAmericano
        return "Ваше американо, сэр!"
    }
    
    func makeLatte() -> String {
        var done = ""
        if CoffeeMachineTanks.waterTank >= waterForLatte &&
            CoffeeMachineTanks.milkTank >= milkForLatte &&
            CoffeeMachineTanks.beansTank >= beansForLatte {
            done = cupOfLatte()
        } else if CoffeeMachineTanks.waterTank < waterForLatte {
            done = "Не хватает воды."
        } else if CoffeeMachineTanks.milkTank < milkForLatte {
            done = "Не хватает молока."
        } else if CoffeeMachineTanks.beansTank < beansForLatte {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfLatte() -> String {
        CoffeeMachineTanks.waterTank -= waterForLatte
        CoffeeMachineTanks.milkTank -= milkForLatte
        CoffeeMachineTanks.beansTank -= beansForLatte
        return "Ваше латтэ, сэр!"
    }
    
    func makeMokko() -> String {
        var done = ""
        if CoffeeMachineTanks.waterTank >= waterForMokko &&
            CoffeeMachineTanks.milkTank >= milkForMokko &&
            CoffeeMachineTanks.beansTank >= beansForMokko {
            done = cupOfMokko()
        } else if CoffeeMachineTanks.waterTank < waterForMokko {
            done = "Не хватает воды."
        } else if CoffeeMachineTanks.milkTank < milkForMokko {
            done = "Не хватает молока."
        } else if CoffeeMachineTanks.beansTank < beansForMokko {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfMokko() -> String {
        CoffeeMachineTanks.waterTank -= waterForMokko
        CoffeeMachineTanks.milkTank -= milkForMokko
        CoffeeMachineTanks.beansTank -= beansForMokko
        return "Ваше мокко, сэр!"
    }
    
    func addWater() -> String {
        var done = ""
        if CoffeeMachineTanks.waterTank >= 500 {
            done = "Некуда лить, бак полон."
        }
        while CoffeeMachineTanks.waterTank < 500 {
            CoffeeMachineTanks.waterTank += 1
            done = "Вы долили воды, теперь в баке \(CoffeeMachineTanks.waterTank) мл."
        }
        return done
    }
    
    func addMilk() -> String {
        var done = ""
        if CoffeeMachineTanks.milkTank >= 300 {
            done = "Некуда лить, бак полон."
        }
        while CoffeeMachineTanks.milkTank < 300 {
            CoffeeMachineTanks.milkTank += 1
            done = "Вы долили молока, теперь в баке \(CoffeeMachineTanks.milkTank) мл."
        }
        return done
    }
    
    func addBeans() -> String {
        var done = ""
        if CoffeeMachineTanks.beansTank >= 50 {
            done = "Некуда сыпать, лоток полон."
        }
        while CoffeeMachineTanks.beansTank < 50 {
            CoffeeMachineTanks.beansTank += 1
            done = "Вы засыпали зёрен, теперь в лотке \(CoffeeMachineTanks.beansTank) шт."
        }
        return done
    }

    func ingrStatusChecker() -> String {
        let sendIngrStatus = "Осталось: \(CoffeeMachineTanks.waterTank) мл воды, \(CoffeeMachineTanks.milkTank) мл молока и \(CoffeeMachineTanks.beansTank) зёрен."
        return sendIngrStatus
    }
    
}
