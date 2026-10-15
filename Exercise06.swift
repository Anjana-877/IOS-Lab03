import Playgrounds

#Playground {

    // Simple Struct Setup

    struct SimpleStudent {
        var name: String
        var mark: Int
        var registered: Bool = true
    }

    let simpleStudent = SimpleStudent(name: "Amal", mark: 72)
    print(simpleStudent.name)
    print(simpleStudent.mark)
    print(simpleStudent.registered)


    // Computed Properties
    
    struct Rectangle {
        var width: Double
        var height: Double

        var area: Double {
            return width * height
        }
    }

    let rectangle = Rectangle(width: 4, height: 3)
    print(rectangle.area)

    // Add a Computed grade
    
    enum SimpleGrade: String {
        case a = "A"
        case b = "B"
        case c = "C"
        case f = "F"
    }

    struct AdvancedStudent {
        var name: String
        var mark: Int

        var grade: SimpleGrade {
            switch mark {
            case 75...100:
                return .a
            case 65..<75:
                return .b
            case 50..<65:
                return .c
            default:
                return .f
            }
        }
    }

//    let student = student(name: "Amal", mark: 72)
//    print(student.name)
//    print(student.grade.rawValue)


    // Methods and Mutating Functionalities
    
    struct Student {
        
        var name: String
        var mark: Int

        func displayDetails() {
            print("\(name) received \(mark)")
        }
    }

//    let Student = Student(name: "Kamal", mark: 75)
//    Student.displayDetails()

    // Mutating Method Counter
    
    struct Counter {
        var count = 0

        mutating func increment() {
            count += 1
        }
    }

    var counter = Counter()
    
    counter.increment()
    counter.increment()
    
    print(counter.count)


    // Classes

    class Lecturer {
        var name: String
        var module: String

        init(name: String, module: String) {
            self.name = name
            self.module = module
        }

        func introduce() {
            print("\(name) teaches \(module)")
        }
    }

    let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
    lecturer.introduce()


    // Struct vs Class – The Important Difference

    
    struct Point {
        var x = 0
    }

    var firstPoint = Point()
    var secondPoint = firstPoint
    secondPoint.x = 99

    print(firstPoint.x)
    print(secondPoint.x)

    class CounterClass {
        var count = 0
    }

    let firstCounter = CounterClass()
    let secondCounter = firstCounter
    secondCounter.count = 99

    print(firstCounter.count)  
    print(secondCounter.count)

}
