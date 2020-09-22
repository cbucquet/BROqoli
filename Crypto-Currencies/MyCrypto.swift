import UIKit

class Crypto: NSObject, NSCoding {
    
    var name : String
    var numberOfShowing : Int
    var show : Bool
    var userMoney : Double
    var marketValue : Double
    var augmente : Double
    var previous : Double
    var marketValueEuro : Double
    var realname : String
    
    init(name: String, numberOfShowing: Int,show: Bool, userMoney: Double,  marketValue : Double,  augmente: Double, previous: Double, marketValueEuro: Double, realname: String) {
        
        self.name = name
        self.numberOfShowing = numberOfShowing
        self.show = show
        self.userMoney = userMoney
        self.marketValue = marketValue
        self.augmente = augmente
        self.previous = previous
        self.marketValueEuro = marketValueEuro
        self.realname = realname
    }
    
    required init (coder aDecoder: NSCoder) {
        
        name = (aDecoder.decodeObject(forKey: "name") as? String)!
        numberOfShowing = aDecoder.decodeInteger(forKey: "numberOfShowing")
        show = aDecoder.decodeBool(forKey: "show")
        userMoney = aDecoder.decodeDouble(forKey: "userMoney")
        marketValue = aDecoder.decodeDouble(forKey: "marketValue")
        augmente = aDecoder.decodeDouble(forKey: "augmente")
        previous = aDecoder.decodeDouble(forKey: "previous")
        marketValueEuro = aDecoder.decodeDouble(forKey: "marketValueEuro")
        realname = (aDecoder.decodeObject(forKey: "realname") as? String)!



        
    }
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(name, forKey: "name")
        aCoder.encode(numberOfShowing, forKey: "numberOfShowing")
        aCoder.encode(show, forKey: "show")
        aCoder.encode(userMoney, forKey: "userMoney")
        aCoder.encode(marketValue, forKey: "marketValue")
        aCoder.encode(augmente, forKey: "augmente")
        aCoder.encode(previous, forKey: "previous")
        aCoder.encode(marketValueEuro, forKey: "marketValueEuro")
        aCoder.encode(realname, forKey: "realname")

    }
    
}



