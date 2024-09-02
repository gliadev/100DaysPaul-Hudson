import Foundation

struct BankAccount {
    private(set) var funds = 0  // `funds` puede ser leído externamente, pero no modificado

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
print(account.funds)  // Output: 100

// Esto causará un error de compilación porque `funds` es de solo lectura externamente
// account.funds -= 1000  // Error: Cannot assign to property: 'funds' setter is inaccessible


// pripiedades y metodos
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)  // Output: 1.3 beta 2

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

let exampleEmployee = Employee.example
print(exampleEmployee.username)  // Output: cfederighi

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
    
    private static var entropy = Int.random(in: 1...1000)
    
    static func getEntropy() -> Int {
        entropy += 1
        return entropy
    }
}

print(Unwrap.getEntropy())  // un número entero aleatorio + 1



