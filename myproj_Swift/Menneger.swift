import Foundation

class Menneger{
    
    static let shared = Menneger()
    
    private init(){
}
    func startDay(){
        array = [Beer(name: "BeerOne", coast: 5.5, number: 100), Beer(name: "BeerSecond", coast: 10.25, number: 100),
                 Beer(name: "BeerThird", coast: 10.0, number: 100)]
    }
    func minus(value:String)-> String{
        let counter = Int(value)
        if counter == 0{
            return String(counter!)
            
        }
        
            else{
                return String (counter! - 1)
            }
        }
    
    func add(value:String, type: Int)->String{
        let counter = Int(value)
        if counter == array[type].number{
            return String(counter!)
            
        }
        else {return String(counter! + 1)}
        
    }
    func sale(BeerOneCount: String, Beer2Count: String, Beer3Count: String)-> String{
        let countOne = Double(BeerOneCount)! * array[0].coast
        let countTwo = Double(Beer2Count)! * array[1].coast
        let countThree = Double(Beer3Count)! * array[2].coast
        return "\(Double(BeerOneCount)!) * \(array[0].coast) - \(array[0].name) , \(Double(Beer2Count)!) * \(array[1].coast) - \(array[1].name) , \(Double(Beer3Count)!) * \(array[2].coast) - \(array[2].name): Total sum - \(String(countOne + countTwo + countThree))"
    }
    
    func endDay() -> String{
        let summ = Double(100 - array[0].number) * array[0].coast + Double(100 - array[1].number) * array[1].coast + Double(100 - array[2].number) * array[2].coast
        return "\(100 - array[0].number) * \(array[0].coast) - \(array[0].name), \(100 - array[1].number) * \(array[1].coast) - \(array[1].name), \(100 - array[2].number) * \(array[2].coast) - \(array[2].name):Total sum of day - \(summ)"
        
    }
    }

