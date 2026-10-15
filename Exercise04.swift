import Playgrounds

#Playground {
    
    let marks = [72, 45, 65, 48, 90]
    
    //flter
    
    let passed = marks.filter { $0 >= 50 }
    print(passed)

    // map
    
    let increasedMarks = marks.map { $0 + 5 }
    print(increasedMarks)
    
    // reduce
    
    let total = marks.reduce(0) { $0 + $1 }
    print(total)

    print("\n")
    
    // Activity 5

    let prices = [120.0, 250.0, 80.0, 500.0, 150.0]
    
    let highPrice = prices.filter {$0 > 100.0}
    print("price grater than 100: \(highPrice)")
    
    let increasedPrice = prices.map {$0 + 10.0}
    print("price increased by 10: \(increasedPrice)")
   
    let totalPrices = prices.reduce (0.0, +)
    print("Total of all prices: \(totalPrices)")
    
}
