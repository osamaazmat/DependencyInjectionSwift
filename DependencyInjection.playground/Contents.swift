/*
 Dependency Injection is just a way of defining contracts that
 can be used for any class that conforms to that contract.
 
 It helps us in using multiple type of objects just because they
 are conforming to the same protocol as a dependency.
 
 As BMW, Toyota and Honda conform to the Driving protocol, they
 can easily be injected into the SelectedCar class.
 
 */

import Foundation
import UIKit

protocol Driving {
    func startDriving()
    func isDriving() -> Bool
    func stopDriving()
}

class BMW: Driving {
    
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func stopDriving() {
        
    }
}

class Toyota: Driving {
    
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func stopDriving() {
        
    }
}

class Honda: Driving {
    
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func stopDriving() {
        
    }
}

class SelectedCar {
    
    var car: Driving
    
    init(car: Driving) {
        self.car = car
    }
}


var selectionOne    = SelectedCar(car: BMW())
var selectionTwo    = SelectedCar(car: Toyota())
var selectionThree  = SelectedCar(car: Honda())


/*
 Another example could be the types of Email Accounts that we have.
 */


protocol EmailAccounts {
    var userName: String { get }
    var domain: String { get }
    var lastEmailRecieved: Date { get }
}

class Gmail: EmailAccounts {
    var userName: String {
        return "john"
    }
    
    var domain: String {
        return "@gmail.com"
    }
    
    var lastEmailRecieved: Date {
        return Date()
    }
}

class Yahoo: EmailAccounts {
    var userName: String {
        return "john"
    }
    
    var domain: String {
        return "@yahoo.com"
    }
    
    var lastEmailRecieved: Date {
        return Date()
    }
}

class Outlook: EmailAccounts {
    var userName: String {
        return "john"
    }
    
    var domain: String {
        return "@hotmail.com"
    }
    
    var lastEmailRecieved: Date {
        return Date()
    }
}


func models() -> [EmailAccounts] {
    return [Gmail(), Yahoo(), Outlook()]
}

for model in models() {
    print("Domain is: \(model.domain)")
}
