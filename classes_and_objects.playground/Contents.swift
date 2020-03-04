import UIKit

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A \(name) with \(numberOfSides) sides."
    }
}

var shape = NamedShape(name: "Square")
shape.numberOfSides = 4
var shapeDescription = shape.simpleDescription()


class Square: NamedShape {
    var sideLength: Double
    
    init(_ sideLength: Double, _ name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(5.2, "my test square")
test.area()
test.simpleDescription()

class Circle: NamedShape {
    let pi = 3.14159
    var r: Double = 0.0
    
    init(_ r: Double, _ name: String) {
        self.r = r
        super.init(name: name)
    }
    
    func area() -> Double {
        return pi * pow(r, 2)
    }
    
    override func simpleDescription() -> String {
        return "A circle with \(r) of radious"
    }
}

let circle = Circle(6.554, "Circle")
circle.area()
circle.simpleDescription()

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(_ sideLength: Double, _ name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set(newValue){
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}

let triangle = EquilateralTriangle(4.5, "Equilateral Triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet(newValue) {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet(newValue) {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(_ size: Double, _ name: String) {
        square = Square(size, name)
        triangle = EquilateralTriangle(size, name)
    }
}

var triangleAndSquare = TriangleAndSquare(10, "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(50, "larger square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(2.5, "optional name")
let sideLength = optionalSquare?.sideLength
