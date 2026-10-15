import Playgrounds

#Playground {
    enum Direction {
        case north
        case south
        case east
        case west
    }
    var direction = Direction.north
    direction = .south
    
    //enum with switch
    
    enum Status {
        case registered
        case pending
        case rejected
    }
    let studentStatus = Status.registered
    Then:

    switch studentStatus {

    case .registered:
        print("Registration Complete")

    case .pending:
        print("Registration Pending")

    case .rejected:
        print("Registration Rejected")
    }
    
    //Raw Values
    
    enum Grade: String {

        case a = "A"
        case b = "B"
        case c = "C"
        case f = "F"
    }
    
    let grade = Grade.b

    print(grade.rawValue)

    print("\n")
    
    //Activity 06
 
    enum ModuleStatus: String {
        case notStarted = "Not Started"
        case inProgress = "In Progress"
        case completed = "Completed"
    }
    
    let currentStatus = ModuleStatus.inProgress
    
    print(currentStatus.rawValue)
    
}
