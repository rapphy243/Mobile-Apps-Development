//: [Previous](@previous)
//: # Learning Outcomes
//: By the end of this unit, students should be able to
//: 1. Create a function.
//: 1. Pass a function a parameter.
//: 1. Create a function with multiple parameters.
//: 1. Properly name a parameter.
//: ## Vocabulary
//: * Function
//: * Parameter
//: * ->
//: * Named parameters
//:
//:## Functions
//:Functions are specific directions to a program to do something, like “clean up your room.” There are a handful of tasks within that function, but you know what to do when you’re told to clean up your room. Functions work similarly. Every function has a name and specific set of instructions within it.
//:To better understand functions let’s see how such a “program” would work in the real world. Assume that you are creating a guide book for the Museum of Science & Industry in Chicago. This book will contain step-by-step instructions on how to get from some of the other major sightseeing attractions in the city to the museum using the CTA.
//:
//:Here are directions from Wrigley Field, Lincoln Park and Sox Park (aka Guaranteed Rate Field).
//:
//: ![Directions](directions.png "Directions")
//:Note that independent of where you started, the directions always get you to the Garfield red line stop and then from there the directions are always the same to the museum.  It would seem a waste of space in our directions book to repeat these instructions over and over.  Instead, we could spell out the directions from the Garfield stop to the museum once and then for each of the directions given before, replace all those direction with a single direction saying something like “follow the directions from Garfield stop to the Museum”.
//:
//: ![Directions](directions2.png "Directions")
//:Since all the directions have the same set of instructions at the end, it would make sense to bundle those instructions together and then just tell every direction to reference that bundle.  This saves us space, printing costs and it has another interesting side effect: if the bus system makes a change in their bus schedule and routing number from Garfield to the Museum.  If we didn’t take this approach, we would have to change the directions for every route from a tourist location to the museum.  In our second approach we only have to change the direction once.  All the other specific site directions don’t change at all.
//:
//: ![Directions](directions3.png "Directions")
//:
//:Our little bundle of directions that is repeated each time is called a function, not only in Swift, but most programming languages.  All functions are given a name, so we could call the function when needed. Our function's name is `garfieldToMuseumDirections`. Now whenever we want to have the computer follow those directions in our bundle, we simply refer to the function name `garfieldToMuseumDirections`.  In Swift, to declare a function we start it with the keyword `func` then follow it with its name and then an open and closed parenthesis. Then, we add the bundle of directions within the curly brackets. Here’s an example of the declaration and implementation of a function:
func garfieldToMuseumDirections()
{
    print("Walk 2 Minutes to Red Line Station")
    print("Take 55 to Museum of Science & Industry Stop")
    print("Walk .3 miles to Museum of Science & Industry")
}
//: Then anytime the function is invoked or called, the directions within the curly brackets would be executed. Below is how we would invoke or call our function in Swift.  When we do this, the directions will print to the console window as though all the statements were listed directly where we called the function.
//: - Experiment: Uncomment the line below to see the function `garfieldToMuseumDirections` get called.
garfieldToMuseumDirections
//: Therefore, for each function you create, there are two parts. You must define the function and you must call the function.
//:
//:Let’s take our analogy further and consider the fact that some folks might choose to take a ride-share from the Garfield stop to the museum and will want to give the driving directions to the ride-share driver. We don’t want to create a new function, as the function is for directions from the Garfield stop to the museum. So, we need a way our function can calculate the directions based on driving rather than taking the CTA.  We could add those directions into the function, but how does the function know which way to do the calculation?  In functions, we do this by passing our function a parameter. A parameter is a rule or direction the function must follow that affects how the function is executed. For our example, the parameter could be a `Bool` that, when `true`, tells the function to calculate driving directions for the CTA and when `false` tells it to calculate for driving a car:
func garfieldToMuseumDirections2(showCTARoute: Bool)
{
    if showCTARoute
    {
        print("Walk 2 Minutes to Red Line Station")
        print("Take 55 to Museum of Science & Industry Stop")
        print("Walk .3 miles to Museum of Science & Industry")
    }
    else
    {
        print("Head West toward Wells Street")
        print("Turn left on Wells")
        print("Turn left onto W Garfield Blvd")
        print("Continue onto Morgan Drive")
        // the rest of the instructions
    }
}
//:In our example above, we now see that it has a parameter called `showCTARoute` and when it is passed a `true` value it shows the CTA directions, when passed a `false` value it shows the driving directions.  The function is the same, it just behaves slightly differently depending on the information passed to it when it is called.
//: - Experiment: Uncomment the line below to see the new implementation of `garfieldToMuseumDirections2`. Make sure to send `true` to the function, see what prints and then change the argument to false. The screenshots below should demonstrate the differences if you take CTA or drive.
garfieldToMuseumDirections2(showCTARoute: false)
//: ![Directions](directions4.png "Directions")
//: In Swift, we declare parameters for our function by naming them in between the parenthesis in the function declaration.  Each parameter is given a name and then followed with a colon and it’s type.  In our case the name is `showCTARoute` and the type is `Bool`.  In our example we only need to pass one parameter, but we can declare a function that can take as many parameters as we like.  We simply add a comma after each parameter and add the `name: type` of each additional parameter.  We will see an example of this when we look at named parameters later in this topic.
//: ##Returning a Result
//: Let’s look at a function that returns a result.  In our example so far, it merely prints out the directions to the console window.  In reality, what if we wanted it to return a `String` containing the directions?  We might want to send these `String` values to generate an email rather than print to the console window.  When a function needs to return a value, rather than just `print()`,  you can express this by adding the return arrow `->` (a hyphen followed by a right angle bracket) and then the type of the value being returned.
func garfieldToMuseumDirections3(showCTARoute: Bool) -> String
{
    var result: String = String()
    if showCTARoute
    {
        result += "Walk 2 Minutes to Red Line Station\n"
        result += "Take 55 to Museum of Science & Industry Stop\n"
        result += "Walk .3 miles to Museum of Science & Industry\n"
    }
    else
    {
        result += "Head West toward Wells Street\n"
        result += "Turn left on Wells\n"
        // the rest of the instructions
    }
    return result
}

//: - Experiment: Uncomment the line below to work with the new function call.
//var directions = garfieldToMuseumDirections3(showCTARoute: true)
