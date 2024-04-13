

class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip : Ship {
    let maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // checks to see if CruiseShip is at maximum capacity
    func passengerCountCheck() -> Bool {
        var canAddPassenger: Bool = false
        if currentPassengerCount < maxCapacity {
            canAddPassenger = true
        }
        return canAddPassenger
    }
    
    func addPassenger() -> Void {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
        }
    }
    
    func printCurrentPassengerCount() {
        if currentPassengerCount < maxCapacity {
            print("The current passenger count is \(currentPassengerCount)")
        } else {
            print("Max capacity, do not add passenger")
        }
    }
}

let cruiseShip = CruiseShip(name: "Karmic Cruise", year: 1998, countryOfOrigin: "USA", maxCapacity: 5000, oceanOfOperation: "Pacific", currentPassengerCount: 4999
)

//PRINTS

print("Passenger can be added: \(cruiseShip.passengerCountCheck())")

cruiseShip.printCurrentPassengerCount()

print("Welcome to \(cruiseShip.name), we are so excited to begin our trip through the \(cruiseShip.oceanOfOperation) ocean! Completed in \(cruiseShip.year) right here in the \(cruiseShip.countryOfOrigin), \(cruiseShip.name) holds up to \(cruiseShip.maxCapacity) patrons. You will be cruising around the \(cruiseShip.oceanOfOperation) with \(cruiseShip.currentPassengerCount) other adventurous friends on your voyage. We have exciting events planned so hold on for the cruise and enjoy every minute!")


 class CargoShip: Ship {
    let maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternamtional: Bool
    
     init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, currentCargoCount: Int, isInternamtional: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternamtional = isInternamtional
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }

     // checks to see if CargoShip is at maximum capacity
     func cargoCountCheck() -> Bool {
         var canAddCargo: Bool = false
         if currentCargoCount < maxCargoCapacity {
             canAddCargo = true
         }
         return canAddCargo
     }
     
     func addCargo() -> Void {
         if currentCargoCount < maxCargoCapacity {
             currentCargoCount += 1
         }
     }
     func printCurrentCargoCount() {
         if currentCargoCount < maxCargoCapacity {
             print("The current cargo count is \(currentCargoCount)")
         } else {
             print("Max capacity, do not add cargo")
         }
     }
}


let cargoShip = CargoShip(name: "Karma Cargo", year: 1998, countryOfOrigin: "USA", maxCargoCapacity: 800, currentCargoCount: 600, isInternamtional: true)

//PRINTS

print("Cargo can be added: \(cargoShip.cargoCountCheck())")
cargoShip.printCurrentCargoCount()


class PirateShip: Ship {
    let maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = currentTreasureCount
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // checks to see if PirateShip is at maximum capacity
    func treasureCountCheck() -> Bool {
        var canAddTreasure: Bool = false
        if currentTreasureCount < maxTreasureCapacity {
            canAddTreasure = true
        }
        return canAddTreasure
    }
    
    func addTreasure() -> Void {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
        }
    }
    func printCurrentTreasureCount() {
        if currentTreasureCount < maxTreasureCapacity {
            print("The current treasure count is \(currentTreasureCount)")
        } else {
            print("Max capacity, do not add treasure")
        }
    }
}

let pirateShip = PirateShip(name: "Karma Treasure", year: 1998, countryOfOrigin: "USA", maxTreasureCapacity: 10000, currentTreasureCount: 9999, numberOfCannons: 100000)

//PRINTS

print("Treasure can be added: \(pirateShip.treasureCountCheck())")
pirateShip.printCurrentTreasureCount()

