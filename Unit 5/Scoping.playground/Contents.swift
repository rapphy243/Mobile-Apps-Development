/*:
 ![Mobile Makers Edu](MobileMakersEdu.png)
 - - -
 # Scoping
 - - -
 ### Application to Apps
Know those little brackets? { } They indicate the start and end to something, like bookends or walls containing the content within. Scoping is the idea that ensures objects can get access to what they need to when your code gets more complicated.
 - - -
 ### Learning Outcomes
 By the end of this unit, students should be able to
* Identify the visibility of a variable in a program in a variety of situations.
* Explain how the program scopes.
 - - -
 ### Vocabulary
 * **Scope:** How variables are accessed throughout a program.
 
 * **Visibility:** The term used to describe whether or not something has access.
 - - -
 ## Section 1: Visibility of Variables
Visibility refers to the ability your program has to get at the value of a variable.  Remember back to our example of envelopes and sticky notes.  Envelopes represented the variables; sticky notes represented values of the variables.   In our initial example we just assumed that we always had access to all of the envelopes any time we wanted.  But in reality, this is not always the case in a computer program.  There are strict rules regarding how variables are accessed - or scoped. Visibility is the term we use to describe the ability to scope.
 
There are four main rules that guide when a program has the visibility of a variable (i.e able to access a variable):
*/
/*:
 ### Rule #1:
 Variables declared within a pair of brackets are visible to all statements that appear after the variable but within the pair of brackets, or until the end of the program.  In this following example, statements 5 - 7 have visibility of (i.e "can see") `numberOfPlanets`.
 
![BasicVariableScoping](BasicVariableScoping1.png "BasicVariableScoping")

 ### Rule #2:
 Variables declared outside and before the brackets are visible to all statements that follow, both inside and outside the brackets.  In the example below, statements 2-9 all have visibility of `numberOfPlanets`

 ![BasicVariableScoping](BasicVariableScoping2.png "BasicVariableScoping")
*/
/*:
 ### Rule #3:
 When declaring a variable as part of a for loop, the variable is only visible to statements inside the for-loop.  In the example below, statements 4 and 5 have visibility to the `index` of the for-loop.  Not, however, that once the for-loop completes, statements 6 and 7 do NOT have visibility to `index`.

 ![BasicVariableScoping](BasicVariableScoping3.png "BasicVariableScoping")

 ### Rule #4:
 Variables declared before a function at the same level as the function declaration are visible inside the function and all of it’s blocks.  In the example below, all statements after the declaration of `numberOfPlanets` have visibility of this variable.

 ![BasicVariableScoping](BasicVariableScoping4.png "BasicVariableScoping")
 */
/*:
 The function parameters “a” and “b” , however, are local variable declarations for use in the function. As a result, they are visible to all the statements inside the function, but not outside the function.

 ![BasicVariableScoping](BasicVariableScoping5.png "BasicVariableScoping")
- - -
 ## Section 2: Variables Known Throughout a Data Type (i.e. Struct)

 Properties are variables that are defined outside of any function, method, closure or type context. You can define a  variable in any file you can access it anywhere in the data type. In the example below, `customText` is a property of `SomeCustomView`.

 Example:
 */
import SwiftUI

struct SomeCustomView: View {
    let customText : String
    var body: some View {
        Text("")
    }
    
    func someFunction() {
        
    }
}

struct AnotherCustomView: View {
    var body: some View {
        Text("")
    }
}
/*:
 - Experiment: Inside of `SomeCustomView`, remove the double quotation marks of the `Text` view and start typing the name `customText`. You will notice that code-completion recognizes the variable. Now go inside of `someFunction` and again start typing the name `customText`. Notice that code-completion again recognizes the variable. That is because `someFunction` is inside the `SomeCustomView` struct, and `customText` is a property of `SomeCustomView`.
 - Experiment: Inside of `AnotherCustomView`, remove the double quotation marks of the `Text` view and start typing the name `customText`. Notice that code-completion does not recognize the variable because `customText` was defined in a different struct (`SomeCustomView`), and is therefore not recognized in `AnotherCustomView`.
 - - -
 ## Section 3: Local Variables Known inside Functions
Local variables are variables that are defined inside of a function, method, closure or type context. Local variables are only visible in the scope of where they are defined. They are inaccessible anywhere else.
 
Example:
 */
import SwiftUI

struct DifferentCustomView: View {
    var body: some View {
        let customText = "Hello World!"
        Text(customText)
    }
    
    func someFunction() {
        
    }
}
/*:
 - Experiment: Go inside of `someFunction` and notice that code-completion does not recognize the variable `customText`, because `customText` was declared inside the `var body: some View` closure, and therefore is not recognizable outside of that closure.
 */
//:  ![Mobile Makers Edu](MobileMakersEdu.png)
