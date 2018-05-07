let hello = "Hello"
let world = "world"
hello.hashValue
world.hashValue

// remove just Equatable and see the result


struct Student : Equatable {
    let rollNumber : Int?
    let name : String?

    init(rollNumber : Int,name : String?) {
        self.rollNumber = rollNumber
        self.name = name
    }
  
    /* No need to explicitly write this method as from swift 4 its implicitly written once you adopt the protocol ,
 
    static func ==(lhs: Student, rhs: Student) -> Bool {
        if lhs.rollNumber == rhs.rollNumber && lhs.name == rhs.name {
            return true
        } else {
            return false
        }
    }
 // but you can write as you want to provide a different Implementaiton
 
 static func ==(lhs: Student, rhs: Student) -> Bool {
 if lhs.rollNumber == rhs.rollNumber  {
 return true
 } else {
 return false
 }
 }
 
 */
    
    // its a custome explicit  implementation for this menthod . if you compare all property use default implicit implementation (above oneå)
    
    static func ==(lhs: Student, rhs: Student) -> Bool {
        if lhs.name == rhs.name  {
            return true
        } else {
            return false
        }
    }
}


let robin:Student = Student(rollNumber:1, name:"Robin")
let lovekesh:Student = Student(rollNumber:1, name:"love")

/* After conforming Equatable protocol we can use “==” and “!=” operators on custom classes objects.*/

// ==

if(robin == lovekesh) {
    print("same instances")
}
else {
    print("diff instances")
}
// !=
if(robin != lovekesh) {
    print("diff instances")
}
else {
    print("same instances")
}


/******************************************* Comparable Protocol ********************************************/


struct Person : Comparable {
 
    let rollNumber : Int?
    let name : String?
    
    init(rollNumber : Int,name : String?) {
        self.rollNumber = rollNumber
        self.name = name
    }
    
    // this method you have to implement and  static mehod == will implemented implecitly
    
    /*  static mehod == will implemented implecitly because Comparable inherrited from Equatable
     
    static func ==(lhs: Student, rhs: Student) -> Bool {
        if lhs.rollNumber == rhs.rollNumber && lhs.name == rhs.name {
            return true
        } else {
            return false
        }
    }

    */
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        if lhs.rollNumber! < rhs.rollNumber!{
            return true
        } else {
            return false
        }
    }
}

let rob:Person = Person(rollNumber:100, name:"Robin")
let love:Person = Person(rollNumber:10, name:"Lovekesh")

var studentArr:[Person] = [rob,love]
studentArr.sort()
print(studentArr)

/* if(rob  != love) {
    print("diff instances")
}
else {
    print("same instances")
}
if(rob  == love) {
    print("same instances")
}
else {
    print("diff instances")
}


if(rob  >= love) {
    print("greater than or equal to ")
}
else {
    print(" NOt : greater than or equal to")
}

 


if(rob  <= love) {
    print("lesser than or equal to")
}
else {
    print("Not : lesser than or equal to")
}
 

if(rob  > love) {
    print("greater than ")
}
else {
    print("Not : greater than ")
}
*/
 if(rob  < love) {
    print("lesser than ")
}
else {
    print("Not : lesser than ")
}

 


















