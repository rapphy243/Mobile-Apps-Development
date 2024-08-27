//: [Previous](@previous)
//:
//: # Learning Outcomes
//: By the end of this unit, students should be able to
//: * Explain what it means to assign a variable or constant.
//: * Explain the purpose of a variable and constant in the program’s workflow.
//: * Differentiate between a variable and a constant.
//: * Differentiate between basic data types
//: * Use Camel Casing in development.
//: * Read and write variables and constants in Xcode.
//: ## Vocabulary
//: * Assign
//: * Variable
//: * Constant
//: * Data Types
//: * Bool
//: * Int
//: * Double
//: * String
//: * Data Type Inference
//: * String Concatenation
//: * String Interpolation
//: * Camel Casing
/*:
***
 */
//: # Storing data
//: ## Assigning a Value to a Variable or Constant
//: Now that you know how to write a very simple program, compile, and run it, let’s look at some ways to do some more interesting things. Let’s assume that we want our program to be able to remember a number and then retrieve that number later.  We do this by creating a variable or constant.
//: ## The Envelope Analogy
//: Suppose we want to remember the number of states in the United States, the value of `PI`, and my friend’s first name.  We could grab three envelopes and label each envelope.  Then on three pieces of paper, we could write down the values we want to remember and then put each piece of paper in an envelope.
//:
//: Later on, when we want to go back and ask the question, “How many states are in the United States”, we just find the envelope with the proper label, look inside and grab the piece of paper which has the answer.
//:
//: In our analogy, a variable is an envelope with a name on it, telling us what is stored inside.
//: The piece of paper inside contains the value itself that is remembered.
//: Putting the piece of paper into the envelope is equivalent to giving the variable a value.
//: Looking inside and reading the piece of paper is equivalent to reading the value.
//:
//: ![Icon for envelope](Envelope.png "Envelope")
//: Variables and constants allow us to store (or remember) numbers and words and retrieve them later when we need them, just like items in an envelope.  The way a computer does this is by storing these things in its memory which is kinda like your brain.  Your age is something you remember, which is stored somewhere in your head. Computer programs need to create and access memory space for storing values. Variables and constants do that.
//:
//: So, what’s the difference between a variable and a constant? Variables are values that can change, while constants are values that cannot. Here are some examples of what they look like:
var numberOfAnimals = 50
let numberOfCages = 10
//: - `var` and  `let` are the constraint
//: - `numberOfAnimals` and `numberOfCages` are the names
//: - `=`  is the assignment operator that tells the computer that the `name` on the left gets the `value` on the right
//: ## Variables
var numberOfPeopleComingToParty = 50
//: A variable is a value that can change. In the above example, we might want the number of people coming to the party to change. So, we indicate it by adding `var` as a prefix. This means that later in the code, we could alter the number to be 45 or 60. If we built an application that needed the number to change, `var` would do the trick.
numberOfPeopleComingToParty = 45
numberOfPeopleComingToParty = 60
//: If we go back to the envelope analogy, this means that the envelope is `numberOfPeopleComingToParty` and `50` is what’s on the piece of paper inside the envelope. `var` tells us that the number 50 can be changed (think of taking the paper out of the envelope and writing a different number on it).
//: In Swift, Xcode is smart enough to recognize that in the above example, the variable `numberOfPeopleComingToParty` is an `Int`. However, we can also declare the type explicitly in the code:
var numberOfStudents : Int = 50
//: This is important to know because when we start to declare other things, like dictionaries, we will need to know how to explicitly declare the type.  So, the following two sets of codes will yield the same results. The latter just explicitly declares the value type.
var numberOfTables = 50
var numberOfChairs : Int = 50
//: ## Constants
let numberOfPresents = 10
//: A constant is a value that cannot change. In the example above, the number of presents cannot change. It must always be 10. Never 9, never 11, but always 10. We indicate it’s a constant by adding `let` as a prefix. This means that later in the code, this number cannot change. It’s constant.
//: If we go back to the envelope analogy, this means that the envelope is `numberOfPresents` and `10` is what’s on the piece of paper. `let` tells us that the number inside that envelope can never change. It can be read, but it’s stuck in there and cannot be removed or replaced.
//: NOTE: You must always use either `var` or `let` when declaring a new data reference. Xcode encourages you to make all of your data references as constants (e.g. `let`) unless you know that the value is going to change (e.g. `var`). Xcode will even tell you if a variable in your code never changes, although it is only a warning.
//: ## Print to Console
//: In Xcode, if you want to display the value of a variable in the console window, you would use the `print()` command
//: This means, if you wanted to assign a variable and then display its value, it would look like this:
var numberOfTextMessages = 10
print(numberOfTextMessages)
//: This would display `10` in the Xcode debug window at the bottom of the screen.
/*:
***
 */
//: # Swift data types
//: There are four primary data types in Swift, namely `Bool`, `Int`, `Double`, and `String`. Data types can be explicitly (specifically) declared in Swift, or else Swift can implicitly (automatically) figure them out based on the values that are assigned to them.
//: ## Bool
//: A `Bool` stands for boolean.   A boolean value is either true or false.  Think of a boolean value as describing a state that can be expressed with just two values.  For example, a door is either open or closed, it is either day or night, the light switch is either on or off, etc.  `Bool` values are important to computer programming because they play a critical role in helping the computer make decisions and execute different paths of a software program based on the `Bool` value.  Here is how a boolean is explicitly declared in Swift.
var todayIsSunny : Bool = true
//: ## Int
//: An `Int` represents an integer number between -2,147,483,648 and 2,147,483,647.  Integers do not contain decimal values or fractions.  They are always positive or negative whole numbers including 0.  Here is how an integer is explicitly declared in Swift:
let numberOfFacesOnADodecahedron : Int = 12
//: ## Double
//: A `Double` represents a number with a fractional component (decimal). It is explicitly declared as follows:
let numberForPi : Double = 3.14159
//: ## String
//: A `String` is a variable which holds a list of characters to form a string.  `Strings` are always contained between two double quotes.  You can explicitly declare a string in the following way:
var myFavoriteCity : String = "Chicago, IL"
/*:
***
 */
//: # Data type inference
//: What’s really great about Swift, is that Xcode is smart enough to know if we write
var numberOfLettersInAlphabet = 26
//: it knows the object is an `Int`, and if we write
var fraction = 3.25
//: it knows the object is a `Double`, and if we write
var playingGame = true
//: it knows the object is a `Bool`, and lastly, if we write
var greeting = "Hello World!"
//: it knows the object is a `String`.
//:
//: Apple prefers that when creating a variable or a constant that it be assigned a value without adding specific data type. Swift will then use `type inference` to figure out the data type automatically.
//:
//: However, this is not always the case. Sometimes we need to declare a variable first (with a data type), and then later on assign it a value. For example:
var secondGreeting : String
secondGreeting = "Hello World!"
//: This tells the program explicitly that the object is a `String`.  Swift is generally smart enough to figure a lot of this out, but it’s important that you know how to do it explicitly because it will come into play later.
/*:
***
 */
//: # String concatenation
//: ## Building a string from several other variables
//: You can concatenate (combine) two strings to build one long string like this:
var myStreet = "123 Main St."
var myCity  = "Chicago"
var myState  = "IL"
var myZipcode  = "60601"

var myAddress = myStreet + myCity + myState + myZipcode

//: We need to clean that up. You can add in imbedded strings, like this:
myAddress = myStreet + " " + myCity + ", " + myState + " " + myZipcode

//: You can also use the current value of constants or variables in creating a string by using `String interpolation`. Inside the double quotation marks simply wrap them in a \\( ):
let myAge = 28
let newString = "My age is \(myAge)."

//: ## Camel Casing Names in Swift
//:If you haven’t already noticed, the names of the variables and constants have these funny upper and lowercase characters going on.
//: When using longer names, it is often the case that a single name is made up of multiple words.  The tradition is to use `camelCasing` to make the variable easier to read. It allows us to be much more descriptive in what our assignment is. For example, `welcomeMessage` is much easier to decipher what that is for than `wMss`. Clarity is key when writing code because often times you are not the only one looking at your code. Clear description will help lead you to clean and transferable code.
//: For example, if we wrote:  `numberofstatesintheus` as our variable name, it would be descriptive but somewhat hard to read.  `numberOfStatesInTheUS` is easier to read because we can visually see where the word boundaries are.  The rules for `camelCase` are as follows:
//: Start every variable name with a lowercase character, unless it is a known abbreviation, in which case you can use the all caps version of the abbreviation. Capitalize the first character of each new word.
//: Note that the compiler (Xcode) doesn’t care how we name our variables and doesn’t enforce any standard. It is good coding practice, however, to always use `camelCasing`.
