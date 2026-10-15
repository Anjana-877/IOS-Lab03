import Playgrounds

#Playground {
    
    // Part A – Create a Grade Enum
    
    enum Grade: String {
        case a = "A"
        case aMinus = "A-"
        case bPlus = "B+"
        case b = "B"
        case bMinus = "B-"
        case cPlus = "C+"
        case c = "C"
        case cMinus = "C-"
        case f = "F"
    }
    
    
    // Part B, C & D – Create a Student Struct
    
    struct Student {
        let studentID: String
        var name: String
        var mark: Int
        
        // Part C – Add a Computed Grade Property
        var grade: Grade {
            switch mark {
            case 80...100: return .a
            case 75..<80:  return .aMinus
            case 70..<75:  return .bPlus
            case 65..<70:  return .b
            case 60..<65:  return .bMinus
            case 55..<60:  return .cPlus
            case 45..<55:  return .c
            case 40..<45:  return .cMinus
            default:       return .f
            }
        }
        
        // Part D – Add a Method
        func displayDetails() {
            print("ID: \(studentID)")
            print("Name: \(name)")
            print("Mark: \(mark)")
            print("Grade: \(grade.rawValue)")
            print("--------------------")
        }
    }
    
    
    // Part E – Create Students Array
    
    let students = [
        Student(studentID: "IT001", name: "Amal", mark: 72),
        Student(studentID: "IT002", name: "Nimali", mark: 45),
        Student(studentID: "IT003", name: "Ruwan", mark: 68),
        Student(studentID: "IT004", name: "Sanduni", mark: 90),
        Student(studentID: "IT005", name: "Kasun", mark: 38)
    ]
    
    print("PART F: ALL STUDENTS")
    // Part F – Display Students
    for student in students {
        student.displayDetails()
    }
    
    print("PART G: PASSED STUDENTS (MARK >= 50) ")
    // Part G – Use filter
    let passedStudents = students.filter { $0.mark >= 50 }
    for student in passedStudents {
        print("Name: \(student.name)")
    }
    print("--------------------")
    
    print("PART H: STUDENT NAMES MAP")
    // Part H – Use map
    let studentNames = students.map { $0.name }
    print(studentNames)
    print("--------------------")
    
    print("PART I: CLASS PERFORMANCE METRICS")
    // Part I – Use reduce to sum all scores and find the class mean average
    let totalMarks = students.reduce(0) { $0 + $1.mark }
    let classAverage = Double(totalMarks) / Double(students.count)
    print(String(format: "Class Average: %.1f", classAverage))
    
    
    
    // Part 22 – Additional Challenge (Provisional Extension)
    
    print("\n    ADDITIONAL CHALLENGE: INPUT VALIDATION")
    
    func validateInput(name: String?, mark: Int?) {
        guard let unwrappedName = name, !unwrappedName.isEmpty else {
            print("Validation Error: Name cannot be empty or nil.")
            return
        }
        guard let unwrappedMark = mark, (0...100).contains(unwrappedMark) else {
            print("Validation Error: Mark must be an integer between 0 and 100.")
            return
        }
        print("Input Validated Successfully! Student '\(unwrappedName)' verified with score \(unwrappedMark).")
    }
    validateInput(name: "", mark: 85)
    validateInput(name: "Janith", mark: 105)
    validateInput(name: "Janith", mark: 85)
    
    print("\n    ADDITIONAL CHALLENGE: SUMMARY TUPLE ")
    
    func generateSummary(for records: [Student]) -> (min: Int, max: Int, avg: Double)? {
        guard !records.isEmpty else { return nil }
        
        let scores = records.map { $0.mark }
        guard let absoluteMin = scores.min(), let absoluteMax = scores.max() else { return nil }
        
        let sum = scores.reduce(0, +)
        let average = Double(sum) / Double(records.count)
        
        return (min: absoluteMin, max: absoluteMax, avg: average)
    }
    
    if let summary = generateSummary(for: students) {
        print("Metrics Tuple Generated:")
        print("Lowest Mark Evaluated: \(summary.min)")
        print("Highest Mark Evaluated: \(summary.max)")
        print(String(format: "Average Score Calculated: %.1f", summary.avg))
    }
    
    print("\n    ADDITIONAL CHALLENGE: VALUE VS REFERENCE MUTATIONS ")
    // Class to map referenced entities for memory allocation proofing
    class SharedStore {
        var collectionName: String
        init(name: String) { self.collectionName = name }
    }
    
    // 1. Independent copy verification (Struct)
    var baseStruct = Student(studentID: "IT099", name: "Original Struct", mark: 50)
    var copiedStruct = baseStruct
    copiedStruct.name = "Mutated Struct Copy"
    print("Struct original variable: \(baseStruct.name) (Remained completely un-mutated)")
    print("Struct cloned variable:   \(copiedStruct.name)")
    
    // 2. Shared reference assignment test (Class)
    let originalClassInstance = SharedStore(name: "Original Reference Workspace")
    let duplicatedReferencePointer = originalClassInstance
    duplicatedReferencePointer.collectionName = "Mutated Reference Target"
    print("Class initial instantiation pointer: \(originalClassInstance.collectionName) (Mutated automatically via reference sharing)")
    print("Class reference duplicated pointer:  \(duplicatedReferencePointer.collectionName)")
    
    
}
