import Playgrounds

#Playground {
    
    // Step 1 – Simple guard Function
    
    func registerBasic(_ name: String?) {
        guard let name = name else {
            print("No name given")
            return
        }

        print("Registered \(name)")
    }

    registerBasic("Kamal")
    registerBasic(nil)


    // Step 2 – Add Another Validation
    
    func register(_ name: String?) {
        guard let name = name else {
            print("No name given")
            return
        }

        guard !name.isEmpty else {
            print("Name cannot be empty")
            return
        }

        print("Registered \(name)")
    }

    register(nil)
    register("")
    register("Kamal")


    print("\n")
    // Activity 3
    
    func checkStudent(name: String?, mark: Int?) {
        // 1. Requirement: If name is nil, print "Student name unavailable" and return
        guard let unwrappedName = name else {
            print("Student name unavailable")
            return
        }
        
        // 2. Requirement: If mark is nil, print "Student mark unavailable" and return
        guard let unwrappedMark = mark else {
            print("Student mark unavailable")
            return
        }
        
        // 3. Requirement: Otherwise print: [Name] received [Mark] marks
        print("\(unwrappedName) received \(unwrappedMark) marks")
    }

    // Test instances for Activity 3
    checkStudent(name: nil, mark: 75)
    checkStudent(name: "Kamal", mark: nil)
    checkStudent(name: "Kamal", mark: 75)
}
