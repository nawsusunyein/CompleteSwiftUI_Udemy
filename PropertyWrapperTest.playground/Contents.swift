import UIKit

@propertyWrapper
struct ClampedValue {
    var storedValue : Int = 0
    var min : Int = 0
    var max : Int = 255
    
    var wrappedValue : Int {
        get {
            return storedValue
        }
        set {
            if newValue < min {
                storedValue = min
            } else if newValue > max {
                storedValue = max
            } else {
                storedValue = newValue
            }
        }
    }
    init(wrappedValue : Int) {
        self.wrappedValue = wrappedValue
    }
}

struct Price {
    @ClampedValue var firstPrice : Int
    @ClampedValue var secondPrice : Int
    
    func printMessage() {
        print("First Price : \(firstPrice)")
        print("Second Price : \(secondPrice)")
    }
}

var purchase = Price(firstPrice: -44, secondPrice: 350)
purchase.printMessage()
