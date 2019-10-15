import UIKit
class CoffeeMachine: NSObject {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    struct MyVariables {
        static var waterTank = 500
        static var milkTank = 300
        static var beansTank = 50
    }
    
    let waterForCapuchino = 200
    let milkForCapuchino = 125
    let beansForCapuchino = 15
    
    let waterForAmericano = 125
    let milkForAmericano = 0
    let beansForAmericano = 12
    
    let waterForLatte = 250
    let milkForLatte = 150
    let beansForLatte = 17
    
    let waterForMokko = 150
    let milkForMokko = 225
    let beansForMokko = 11
    
    func makeCapuchino() -> String {
        var done = ""
        if MyVariables.waterTank >= waterForCapuchino &&
            MyVariables.milkTank >= milkForCapuchino &&
            MyVariables.beansTank >= beansForCapuchino {
            done = cupOfCapuchino()
        }
        else if MyVariables.waterTank < waterForCapuchino {
            done = "Не хватает воды."
        }
        else if MyVariables.milkTank < milkForCapuchino {
            done = "Не хватает молока."
        }
        else if MyVariables.beansTank < beansForCapuchino {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfCapuchino() -> String {
        MyVariables.waterTank -= waterForCapuchino
        MyVariables.milkTank -= milkForCapuchino
        MyVariables.beansTank -= beansForCapuchino
        return "Ваше Капучино, сэр!"
    }
    
    func makeAmericano() -> String {
        var done = ""
        if MyVariables.waterTank >= waterForAmericano &&
            MyVariables.milkTank >= milkForAmericano &&
            MyVariables.beansTank >= beansForAmericano {
            done = cupOfAmericano()
        } else if MyVariables.waterTank < waterForAmericano {
            done = "Не хватает воды."
        } else if MyVariables.milkTank < milkForAmericano {
            done = "Не хватает молока."
        } else if MyVariables.beansTank < beansForAmericano {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfAmericano() -> String {
        MyVariables.waterTank -= waterForAmericano
        MyVariables.milkTank -= milkForAmericano
        MyVariables.beansTank -= beansForAmericano
        return "Ваше американо, сэр!"
    }
    
    func makeLatte() -> String {
        var done = ""
        if MyVariables.waterTank >= waterForLatte &&
            MyVariables.milkTank >= milkForLatte &&
            MyVariables.beansTank >= beansForLatte {
            done = cupOfLatte()
        } else if MyVariables.waterTank < waterForLatte {
            done = "Не хватает воды."
        } else if MyVariables.milkTank < milkForLatte {
            done = "Не хватает молока."
        } else if MyVariables.beansTank < beansForLatte {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfLatte() -> String {
        MyVariables.waterTank -= waterForLatte
        MyVariables.milkTank -= milkForLatte
        MyVariables.beansTank -= beansForLatte
        return "Ваше латтэ, сэр!"
    }
    
    func makeMokko() -> String {
        var done = ""
        if MyVariables.waterTank >= waterForMokko &&
            MyVariables.milkTank >= milkForMokko &&
            MyVariables.beansTank >= beansForMokko {
            done = cupOfMokko()
        } else if MyVariables.waterTank < waterForMokko {
            done = "Не хватает воды."
        } else if MyVariables.milkTank < milkForMokko {
            done = "Не хватает молока."
        } else if MyVariables.beansTank < beansForMokko {
            done = "Не хватает зёрен."
        }
        return done
    }
    
    func cupOfMokko() -> String {
        MyVariables.waterTank -= waterForMokko
        MyVariables.milkTank -= milkForMokko
        MyVariables.beansTank -= beansForMokko
        return "Ваше мокко, сэр!"
    }
    
    func addWater() -> String {
        var done = ""
        if MyVariables.waterTank >= 500 {
            done = "Некуда лить, бак полон."
        }
        while MyVariables.waterTank < 500 {
            MyVariables.waterTank += 1
            done = "Вы долили воды, теперь в баке \(MyVariables.waterTank) мл."
        }
        return done
    }
    
    func addMilk() -> String {
        var done = ""
        if MyVariables.milkTank >= 300 {
            done = "Некуда лить, бак полон."
        }
        while MyVariables.milkTank < 300 {
            MyVariables.milkTank += 1
            done = "Вы долили молока, теперь в баке \(MyVariables.milkTank) мл."
        }
        return done
    }
    
    func addBeans() -> String {
        var done = ""
        if MyVariables.beansTank >= 50 {
            done = "Некуда сыпать, лоток полон."
        }
        while MyVariables.beansTank < 50 {
            MyVariables.beansTank += 1
            done = "Вы засыпали зёрен, теперь в лотке \(MyVariables.beansTank) шт."
        }
        return done
    }

    func ingrStatusChecker() -> String {
        let sendIngrStatus = "Осталось: \(MyVariables.waterTank) мл воды, \(MyVariables.milkTank) мл молока и \(MyVariables.beansTank) зёрен."
        return sendIngrStatus
    }
    
}
