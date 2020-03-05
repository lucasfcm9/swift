import UIKit

//Constantes e Variáveis

let maximumNumberOfLoginAttemps = 10 //Constante
var currentLoginAttemp = 0 //Variável

var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage: String //welcomeMessage é do tipo String
welcomeMessage = "Hello"

var red, green, blue: Double //red, green e blue são do tipo Double

var `init` = 10 //init é uma palavra reservada da linguagem, para usá-la, declare-a usando entre ``

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bounjour!" //friendlyWelcome agora é "Bounjout!"

//Não é possível alterar o valor de uma constante
let languageName = "Swift"
// languageName = "Swift++" Não é possível atribuir esse valor: languageName é uma constante

print(friendlyWelcome)
//print(_:separator:terminator:)
//O parâmetro separator e terminator possuem valores padrōes, então eles podem ser omitidos.

print("The current value of friendlyWelcome is \(friendlyWelcome)")


//Int
//Para acessar os valores máximos de um Int8 ou Int32, por exemplo, usamos a função max e min:
let minValue8 = UInt8.min
let maxValue8 = UInt8.max

let minValue64 = UInt64.min
let maxValue64 = UInt64.max

let minValue = Int.min
let maxValue = Int.max


//Float(32 bits) e Double(64 bits)
let floatValue = 3.14159
let doubleValue = 23.343431

//Segurança de tipo e Inferência de tipo

let meaningOFLife = 42 //Pela inferência de tipo, o Swift deduz que a sua variável é do tipo Int

let pi = 3.14159 //Da mesma forma, o Swift deduz que a variável é do tipo Double. Swift sempre escolhe double

let anotherPi = 3 + 0.14159 //Swift, de novo, deduz a variável como sendo do tipo double

//Literais numéricos

//Podem ser escritos como um número decimal, número binário, número octal e número hexadecimal

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

//Pontos flutuantes numéricos

//Para números decimais flutuantes, temos o seguinte:
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1 //O número é multiplicado por 10 elevado ao número depois do "e"

//Para números hexadecimais, o número é multiplicado por 2 elevado ao número depois do "e", por exemplo:
let hexadecimalDouble = 0xC.3p0

//Os literais numéricos podem ser escritos de outra forma. Eles podem ser separados pelo símbolo underscore. Por exemplo:
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//Conversão numérica de tipos

// let cannotBeNegative: UInt8 = -1 - Não pode armazenar números negativos
// let tooBig: Int8 = Int8.max + 1 - Não pode armazenar um número maior que o número máximo desse tipo

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one) //A soma é permitida pois os dois nùmeros são do mesmo tipo

//Conversōes de números inteiros e de pontos flutuantes

let three = 3
let pointOneFourOneFiveNine = 0.14159
let _pi = Double(three) + pointOneFourOneFiveNine //Os dois lados precisam ser do mesmo tipo
let integerPi = Int(_pi) //Prints "3" e o valor é inferido do tipo Int

//Aliases de tipo

typealias AudioSample = UInt16 //AudioSample é um tipo UInt16 devido a declaração do typealias

var maxAmplitudeFound = AudioSample.max

var testAudioSample: AudioSample = 15

//Booleanos
//Só temos dois valores para o tipo Bool - true ou false
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible!")
}

/*
 let i = 1
 if i {
    //Erro, pois o i, que é um inteiro, não pode ser convertido para o tipo Bool
 }
 */
let i = 1
if i == 1 {
    //Isso funciona!
}

//Tuplas
//As tuplas agrupam vários valores em um único valor composto. Os valores da tupla podem ser de qualquer tipo e não precisam ser do mesmo tipo
let http404Error = (404, "Not Found")
//Essa tupla pode ser definida como tendo dois tipos, um inteiro e uma string

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justStatusCode, _) = http404Error
print("The status code is \(justStatusCode)")

//Para acessar os valores em uma tupla, acesse os índices começando em 0, por exemplo:
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

//Pode-se nomear os elementos individuais em uma tupla na hora que a tupla for definida, por exemplo:

let http200Status = (statusCode: 200, description: "OK")

//Para acessar os valores, use a seguinte sintaxe:
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")


//Opcionais
//Um opcional do Swift permite indicar a ausência de um valor de qualquer tipo
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
//converterNumber é inferido como um tipo "Int?" ou optional Int

//Nothing
//Definir uma variável opcional para um estado sem valor atribuindo o valor nil, por exemplo:
var serverResponseCode: Int? = 404 //Contém, atualmente, o valor Int 404
serverResponseCode = nil //serverRespondeCode não possui nenhum valor


//Não pode-se usar valores nil com constantes e variáveis que não forem opcionais, por exemplo:
// let k = nil //Erro
//Sempre que sua variável ou constante ter que trabalhar com valores nil, sempre a declare como opcional com o tipo apropriado

var surveyAnswer: String? //O valor nil é atribuido automáticamente

//If statements and Forced unwrapping


//Quando você sabe que o opcional possui algum valor, você pode acessar esse valor colocando uma "!" ao final do nome opcional, como no exemplo abaixo. O ponto de "!" diz efetivamente que esse opcional possui um valor e que é para usá-lo
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!)")
}

//Optional Binding

//Você pode usar optional binding para descrobir de um valor opcional contém um valor e, se houver, disponibilizá-lo como uma constante ou variável temporária, como por exemplo:

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \(possibleNumber) could not be converted to an integer")
}
//Isso pode ser lido como: Se o opcional Int possibleNumber contiver um valor, defina uma nova constante ou variável chamada actualNumber para o valor contido no opcional
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
//Pode-se incluir várias condiçōes booleanas dentro de um if separadas por vírgulas. Se algum dos valores for nil ou qualquer condição for avaliada como false, a instrução if inteira será considerada false.

//Essas duas instruçōes são equivalentes
if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
     }
}

//Implicity Unwrapped Optionals
let possibleString: String? =  "An optional string"
let forcedString: String = possibleString! //Requer o sinal de exclamação

let assumedString: String! = "An implicity unwrapped optional string"
let implicitString: String = assumedString //Não requer o sinal de exclamação

//Sempre use o ponto de exclamação quando for usar a variável, como no exemplo acima

if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}
//Não use um implicity unwrapped optional se uma variável se tornar nil posteriormente. Sempre use um tipo optional normal se precisar verificar um valor nil durante a vida útil de uma variável

//Manipulação de Erros

//Você usa tratamento de erros para verificar para responder às condições de erros que seu programa pode encontrar durante a execução

func canThrowAnError() throws {
    //Essa funcão pode ou não pode gerar um erro
}

 
