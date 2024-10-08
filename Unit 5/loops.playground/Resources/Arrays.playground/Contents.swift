// Array - collection that stores an ordered list of values
// [] array notation
var array: [String] // declare an array
array = [String]() // initialize an empty array
array.append("a")
var names:[String] = ["Tom", "Riley", "Gaby"]
names.append("Andrew") // add to the end
names += ["Marcus"]
print(names)
var typeInferenceArray = [1, 2, 3, 4, 5]
type(of: typeInferenceArray)
var letters = ["a", "b"]
letters += ["c"]
letters.count
letters.first
letters[0] // [0] same as first
letters.last
letters[letters.count - 1] // [count - 1] same as last
var emptyArray = [Int]()
emptyArray.isEmpty
emptyArray += [2]
emptyArray.isEmpty
var familyMembers = ["Sally", "Joe", "Mary", "Daniel"]
familyMembers.count
"You have \(familyMembers.count) members in your family"
let mary = familyMembers[2]
let joe = familyMembers[1]
familyMembers.remove(at: 0)
familyMembers
familyMembers.insert("Sally", at: 2)
// editing of an array only allowed if it is a var, not a let
var mutableArray = [String]() // can be modified
let imutableArray = [String]() // cannot be modified
var anyTypeArray:[Any] = ["string", true, 3.14, 3]
