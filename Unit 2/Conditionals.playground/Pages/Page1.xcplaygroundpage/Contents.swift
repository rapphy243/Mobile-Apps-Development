//: [Previous](@previous)
//: # Learning Outcomes
//: By the end of this unit, students should be able to
//: 1. Write an if statement.
//: 1. Write an if-then-else statement.
//: 1. Write a comparison question using operators.
//: 1. Differentiate between when to use an if statement, if-then-else statement, and a comparison question.
//: 1. Write a switch statement.
//: ## Vocabulary
//: * Branching
//: * If Statement
//: * If-Else Statement
//: * Switch Statement
//:
//: # Branching
//: The computer will always execute one statement at a time in sequential order unless something changes its path.  There are many ways to alter execution to take a different path; however, the most prevalent way of doing this is using an `if` statement.  An "if statement" allows the computer to test if something is `true`.  If it is `true`, then execution flow will take a true path, if the test fails, or is `false`, then it will take the other path.
//: It is very similar to coming to a fork in the road.  When this happens, you have to make decision whether you are going to go left or right.  The computer is making the same type of decision.
//:
//: ![Icon for Branching](sign.png "Branching")
//:
//: In Swift we write a basic “if statement”  by asking a question and then giving the computer instructions on what to do depending on the answer. If we were write this out, it would read something like “if x is true, then y should happen. Otherwise skip y.”  In Swift, we write it out in the following way:
//:
//: ![Icon for Branching](image1.png "Branching")
//:
//: When the computer hits the “if statement”, it will answer the question expressed after the word “if”.  If the answer to question is `true`, then all the statements between the curly braces “{  }” will be executed.  It will then proceed to do all statements after the “if statement”.  If, however, the answer to the question is NO (or `false`), then it will SKIP all the statements between the curly braces.
//: The following shows the list of statements in the above example that would be executed when the answer is `true` versus `false`.
//:
//: ![Icon for Branching](image2.png "Branching")
//:
//:
//: ## Creating an if-statement in Swift
//:An if-statement starts with the keyword `if` and is followed by the conditional expression which should evaluate either `true` or `false`, and then is followed by a set of open and close brackets { }.  All statements between these brackets are executed if the if-statement evaluates to `true`.  For example, let’s suppose we are testing to see if an `Int` has a certain value.  We would do that in the following way.
let sidesOfACube = 6
if sidesOfACube == 6
{
    print("Success!")
}
print("This is always executed.")
//: If we were to write this out, it would read:
//: Let the name `sidesOfACube` get the value of 6.
//: If the answer to “sidesOfACube contains the value of 6” is true, then print “Success!” on the console. Otherwise, print “This is always executed.” on the screen.
//: ## If-else
//: A second form of the “if statement” includes an “else” section.  When this type of statement, the computer will execute one path if the answer to the question is `true` or will take another path when the answer is false.  This is different from an “if statement”, where the computer only had to execute a new set of instructions if the answer is `true`. If we were to write this out, it would read something like “If x is true, then do y. If x is false, do z.” Note that the computer will NEVER take both paths in an if-else.   Here is what the statement looks like:
//:
//: ![Icon for Branching](image3.png "Branching")
//:
//: Here are the statements that are executed in the both the `true` and `false` cases.
//:
//: ![Icon for Branching](image4.png "Branching")
//:
//: ## Asking the Question
//: So now that we know the structure of an “if statement” and how it can control the flow of execution through our code, let’s explore how we ask questions.  A question in programming is a comparison of 2 values. Is x different than y?  Thankfully, there are many operators used to compare two values:
//:
//: ![Icon for Branching](image5.png "Branching")
//:
//: Let’s take a peek at what this looks like in code:
//:
//: ![Icon for Branching](image6.png "Branching")
//:
//:  A couple of points to watch out for.
//:
//: - important: `value1 == value2` is NOT the same as `value1 = value2`.  To do a comparison to see if two values are equal, you must use the `==` symbol.  A single `=` means assignment and the Swift compiler will not allow this expression in an `if` statement like many languages.  This is a good thing because this can sneak in as a source of many bugs.
//: - important: Another gotcha is making an equality comparison between two floating point numbers.  Because of rounding it is possible to have two floating point numbers that look equal when they are printed out, but in fact are different. For example, 5.2 might be seen as the same as 5 when rounded. 
//: ## Switch Statements
//: Another common form of branching is using the switch statement.  Unlike the “if-else statement” where the computer only has two options - `true` or `false` - switch allows us to have a variety of options. Switch statements are much more powerful in Swift than most other languages.  Let’s first look at it in its most basic form.  A switch statement starts with the keyword `switch` followed by a variable that we are going to test.  We then add case statements for every option we want to test for.  Finally we include a `default` section which designates the code that needs to be executed if none of the other conditions match. This is required in swift because all conditions that are tested must be exhaustive.  By exhaustive we mean that every possible value is considered.
//:
//: ![Icon for Branching](image8.png "Branching")
//:
//: Here is a real code example of a simple `switch` statement checking the value of a variable for a couple of different values.
let sides = 6
switch sides
{
case 6:
    print("Is a 6")
    print("another line")
case 5:
    print("It is a 5")
    
default : print("some other value other than 5 or 6")
}
//: The power of `switch` statements
//: Suppose we want to test to see if a variable is in two different range of values and, depending on the answer, take a different course of action.  Note: for range, we use dots. Using 2 dots with a less than sign before the last number (e.g. `case 1..<4`) means “use all numbers up to to number just before the last one listed” (e.g. `1, 2, 3`). Using 3 dots (e.g. `case 1...4`) means “use all numbers including the last one”  (e.g `1, 2, 3, 4`).
//: Let’s say we’re building an application that can see how much money you have in a savings account and can determine whether or not you can afford to go to the new concert in town. We build a set of instructions where if `mySavingsAccount` has less than 100 dollars we don’t go to the concert, if we have 100 to 200 we can go to the concert, and if we have over 200, we can invite a friend to come with us. Here’s how that would look in a `switch` statement.
let mySavingsAccount = 100
switch mySavingsAccount
{
case 0...100:
    print("Not enough money for concert tickets")
    print("another line")
case 100...200:
    print("Concert, here I come!")
    
case 200...300:
    print("Take a friend with me.")
default : print("You have plenty of money.")
}
//: In the above example, you can see how `switch` statements can execute different paths depending on how much money is in the savings account. Note: to ensure that something is printed to the user, we created a default option where if the money falls outside of those ranges, it would print “You have plenty of money.”


