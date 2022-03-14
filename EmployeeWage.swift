class EmployeeWage{
    let IS_FULL_TIME = 1
    let IS_PART_TIME = 2
    
    var company: String
    var wagePerHour: Int
    var maxDays: Int
    var maxHours: Int
    
    
    init(company: String, wagePerHour: Int,maxDays: Int,maxHours: Int){
        self.company = company
        self.wagePerHour = wagePerHour
        self.maxDays = maxDays
        self.maxHours = maxHours
    }
    
    func calcEmployeeWage() -> Int{
        var workedHours = 0, totalAttendance = 0,totalWorkedHours = 0
        var totalEmployeeWage = 0
        while(totalAttendance <= maxDays  && totalWorkedHours < maxHours){
            let attendance = Int.random(in: 0..<3)
        
        if(attendance == IS_FULL_TIME){
            workedHours = 8
        }else if(attendance == IS_PART_TIME){
            workedHours = 4
        }else{
            print("absent")
            workedHours = 0
        }
        totalAttendance += 1
        totalWorkedHours += workedHours
        }
        
        print("Number of days attended is:\(totalAttendance)")
        print("totals hours worked: \(totalWorkedHours)")
        totalEmployeeWage = totalWorkedHours * wagePerHour
    
        return totalEmployeeWage
    }
}
let dMart = EmployeeWage(company: "Dmart", wagePerHour: 20,maxDays: 2,maxHours: 10)
let bigBasket = EmployeeWage(company: "BigBasket", wagePerHour: 30,maxDays: 2,maxHours: 10)

print("Total earnings for the employee for the company :\(dMart.company) \(dMart.calcEmployeeWage())")
print("Total earnings for the employee for the company :\(bigBasket.company) \(bigBasket.calcEmployeeWage())")
