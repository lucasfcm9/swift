import UIKit

//First class
class Shape {
    
    var numberOfSides: Int = 0
    var name: String = ""
    
    init(name: String, numberOfSides: Int) {
        self.numberOfSides = numberOfSides
        self.name = name
    }
        
    func description() -> String {
        return "The \(name) has \(numberOfSides) sides."
    }
}

//Herança
class Square: Shape {
    
    var sizeOfSide: Double = 0.0
    init(name: String, numberOfSides: Int, sizeOfSide: Double) {
        self.sizeOfSide = sizeOfSide
        super.init(name: name, numberOfSides: numberOfSides)
    }
    
    func area() -> Double {
        return sizeOfSide * 2
    }
    
    override func description() -> String {
        return "A \(name) with \(numberOfSides) sides and sizes with length = \(sizeOfSide)"
    }
}

var square = Square(name: "Square", numberOfSides: 4, sizeOfSide: 5.67)
print(square.area())
print(square.description())

class Product {
    
    var cod: Int = 0
    var value: Double = 0.0
    var description: String = ""
    init(_ cod: Int, _ value: Double, _ description: String) {
        self.cod = cod
        self.value = value
        self.description = description
    }
}

class Item {
    
    var product: Product
    var quantity: Int = 0
    init(_ product: Product, _ quantity: Int) {
        self.product = product
        self.quantity = quantity
    }
}


class Order {
    
    var totalValue: Double = 0.0
    var items: [Item] = []
    var item: Item
    init(totalValue: Double = 0.0, items: [Item], item: Item) {
        self.totalValue = totalValue
        self.items = items
        self.item = item
    }
    
    func addOrder(item: Item) {
        self.items.append(item)
    }
    
    func total() -> Double {
        var tot = 0.0
        for item in self.items {
            tot += (item.product.value * Double(item.quantity))
        }
        return tot
    }
}

var iPhone = Product(1, 7299.99, "iPhone 11 PRO")
var macbookPro = Product(2, 14999.99, "MacBook Pro 2017")
var item = Item(iPhone, 5)
var item2 = Item(macbookPro, 2)
var p1 = Order(totalValue: 0.0, items: [], item: item)
p1.addOrder(item: item)
p1.addOrder(item: item2)

print("Total value is: ", p1.total())




