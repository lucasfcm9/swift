import UIKit

var str = "Hello, playground"

let x = 50
var y = 30
y = 20

let implicitInteger = 4
let implicitDouble = 70.0
let explicitDouble: Double = 70

let explicitFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 4
let oranges = 5
let appleSummary = "I have \(apples) apples"
let orangeSummary = "I have \(oranges) oragens"

let quotation = """
I have \(apples + oranges) apples and oranges in my bag,"
do you want a apple or orange?"
"""

var shoppingList = ["apple", "cellphone", "water", "tulips"]
shoppingList[1] = "computer"
print(shoppingList)

var occupations = [
    "Lucas": "Software Engineer",
    "Gustavo": "Civil Engineer",
]

occupations["Sofia"] = "Eletronic Engineer"
print(occupations)

shoppingList.append("car")
print(shoppingList)

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

print(emptyArray, emptyDictionary)

shoppingList = []
occupations = [:]

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil) //prints false

var optionalName: String? = "Lucas Fellipe"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String? = "Lucas Fellipe"
// let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var type = ""
for (kind, numbers) in interestingNumbers {
    print(kind, numbers)
    for number in numbers {
        if number > largest {
            largest = number
            type = kind
        }
    }
}
print(type, largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 1..<4 {
    total += i
}
print(total)

var total2 = 0
for i in 1...4 {
    total2 += i
}
print(total2)

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}

greet("Lucas Fellipe", on: "01/03/2020")

func calculateStatistics(_ scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    
    var max = scores[0]
    var min = scores[0]
    var sum = 0
    for score in scores {
        if(score > max) {
            max = score
        }
        if(score < min) {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print(statistics.min)
print(statistics.max)
print(statistics.sum)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number;
    }
    return addOne;
}

var increment = makeIncrementer()
increment(7)

func hasAnyMatches(_ list: [Int], _ condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

numbers.map({ (number: Int) -> Int in
    if(number % 2 == 1) {
        return 0
    } else {
        let result = 3 * number
        return result
    }
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 < $1 }
print(sortedNumbers)
