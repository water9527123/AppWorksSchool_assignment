import Cocoa

//Object-Oriented Swift 1
class Animal {
    enum Gender {
        case male, female, undefined
    }
    var gender : Gender = .undefined
    func eat() {
        print("I eat everything")
    }
}
//Object-Oriented Swift 2
class Elephant : Animal{
    let elephantGender = Gender.male
    override func eat() {
        print("I eat fruit")
    }
}
class Tiger : Animal {
    let tigerGender = Gender.female
    override func eat() {
        print("I eat meat")
    }
}
class Horse : Animal {
    let horseGender = Gender.male
    override func eat() {
        print("I eat grass")
    }
}
//Object-Oriented Swift 3

class Zoo : Any {
    var weeklyHot : Any?
    init(weeklyHot: Any?) {
        
    }
}
var tiger = Tiger()
var elephant = Elephant()
var horse = Horse()


let zoo = Zoo(weeklyHot: Tiger())
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse
//1.類別可以繼承另一個類別的內容 2.解構器(deinitializer)允許一個類別實體釋放任何其所被分配的資源 3.型別轉換允許在執行時檢查和轉換一個類別實體的型別4.參考計數允許對一個類別實體的多次參考


//Object-Oriented Swift 5

//instance method：先需要生成一個特定型別(類別、結構或列舉)的實體，才能使用這個實體裡的方法。
//type method：屬於特定型別(類別、結構或列舉)本身的方法。

//Object-Oriented Swift 6

//類和結構必須在創建該類或結構的實例時，將其所有的存儲屬性設置為一個適當的初始值。不能讓存儲的屬性處於不確定狀態。

//Object-Oriented Swift 7

//在typemethod中，隱式的self屬性指的是類型本身，而不是該類型的實例。這意味著你可以使用self來區分類型屬性和類型方法參數，就像使用實例屬性和實例方法參數一樣。
//每個instancemethod都有一個隱含的屬性，叫做self，它完全等同於實例本身。你在它自己的實例方法中使用self屬性來引用當前實例。

//Object-Oriented Swift 8

//Value Types: 每個實例都保留了一分獨有的數據拷貝，一般以結構體 （struct）、枚舉（enum） 或者 元組（tuple）的形式出現。
//Reference Type: 每個實例共享同一份數據來源，一般以 類（class）的形式出現。


//Enumerations and Optionals 1


enum ​Gasoline​ : Int {
    case oil92 = 92
    case oil95 = 95
    case oil98 = 98
    case diesel = 0
}
​Gasoline​.oil92.rawValue
func getPrice(gasolineType: ​Gasoline​ ) {
    switch gasolineType {
    case ​Gasoline​.oil92:
        print("$100")
    case ​Gasoline​.oil95:
        print("$110")
    case ​Gasoline​.oil98:
        print("$120")
    case ​Gasoline​.diesel:
        print("$90")
    }
}


getPrice(gasolineType: .oil92)


//列舉中的每個成員值，視需求可以在需要的時候，一併儲存自定義的一個或以上其他型別的相關值(associated value)。使用方法為在成員值後面加上小括號()，並將相關值型別放在小括號內(就像使用元組tuple一樣)。往後在程式中將該列舉成員值指派給變數或常數時，這個(或這些)相關值才會被設置，且可以是不同的。

//Enumerations and Optionals 2
class Pet {
    var name : String = "doggy"
}
class People {
    var pet : Pet?
    func People(name: Pet?){
        guard let pet = name  else {
            print("I don't have a pet")
            return
        }
        print("I  have a \(name)")
    }
}


let John = People()


if let Johnspet = John.pet?.name{
    print("John have a \(Johnspet)")
} else {
    print("John do not have a pet.")
}


//let people = People.People(pet)

//Protocol in Swift 1
struct Person {
    var name : String
}
protocol PoliceMan {
    func arrestCriminal() -> Void
}
//Protocol in Swift 2
extension Person : PoliceMan {
    func arrestCriminal() {
        
    }
}

//Protocol in Swift 3
protocol ToolMan {
    func fixComputer() -> Void
}

//Protocol in Swift 4
extension Person : ToolMan {
    func fixComputer() {
        
    }
}
//Protocol in Swift 5
struct Enginner : ToolMan {
    func fixComputer() {
        
    }
}


//Protocol in Swift 6

//protocol name {
//    var name : String { get }
//}
//struct personSteve : name {
//    var name: String = "Steve"
//

//}
let Steve = Person(name: "Steve")
Steve.arrestCriminal()
Steve.fixComputer()

//Error Handling in Swift
enum GuessNumberGameError  {
    
    case wrongNumber
}
extension GuessNumberGameError : Error {
    
}

class GuessNumberGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            print(number)
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right \(targetNumber)")
    }
}

let x = GuessNumberGame()
do{
    try x.guess(number: 20)
}catch let error {
    print("error \(error)")
}
