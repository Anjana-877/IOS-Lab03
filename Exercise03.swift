import Playgrounds

#Playground {
    
    func summary(of marks: [Int])
        -> (minimum: Int, maximum: Int, average: Double) {

        let total = marks.reduce(0, +)

        return (
            marks.min()!,
            marks.max()!,
            Double(total) / Double(marks.count)
        )
    }
    
    let result = summary(of: [72, 65, 48, 90])

    print(result.minimum)
    print(result.maximum)
    print(result.average)
    
    //Tuple Unpacking
    
    let (low, high, average) = summary(of: [72, 65, 48, 90])

    print(low)
    print(high)
    print(average)

    print("\n")
    
    // Activity 4

    func analyzeMarks (_ marks: [Int]) -> (total: Int, average: Double) {
        guard !marks.isEmpty else {
            return (0, 0.0)
        }
        let totalSum = marks.reduce(0, +)
        let averageValue = Double(totalSum) / Double(marks.count)
        return (total: totalSum, average: averageValue)
    }

    let testMarks = [60, 70, 80, 90]
    let activityResult = analyzeMarks(testMarks)

    print("Total: \(activityResult.total)")
    print("Average: \(activityResult.average)")

}
