import UIKit


//MARK: CONTINUE
/*
 Think of loops like a lap around the track.
 Continue Statement says "I am done with this lap" then goes back to the top of the loop and takes another lap.
 */
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
var newNumbers: [Int] = []
for number in numbers {
    if number == 8 {
         continue
    }

    newNumbers.append(number)
    print(newNumbers)
}

//MARK: BREAK WITH LOOP
/*
 Break Statements end the execution of the entire flow statement immediately.
 Break Statments say "I am done with not just the lap but the loop as a whole" and breaks out of it.
 */
var totalCount = 0
for number in numbers {
    if number == 6 {
         break
    }
    totalCount += 1
}

print(totalCount)

//MARK: BREAK WITH SWITCH STATEMENT
let possibleResponseStatusCodes = 201
var responseCodeMeaning = ""
switch possibleResponseStatusCodes {
case 100...199:
    responseCodeMeaning = "Informational Responses"
case 200...299:
    responseCodeMeaning = "Successful Responses"
case 300...399:
    responseCodeMeaning = "Redirection Messages"
case 400...499:
    responseCodeMeaning = "Client Error Responses"
case 500...599:
    responseCodeMeaning = "Server Error Responses"
default:
    break
}

if responseCodeMeaning != ""  {
    print("The response meaning of \(possibleResponseStatusCodes) is \(responseCodeMeaning). ")
} else {
    print("The response status code \(possibleResponseStatusCodes) is NOT a valid code.")
}


//MARK: FALLTHROUGH
/*
 Switch Statements don’t fallthrough the bottom of each case and into the next case.
 As soon as match is found it ends the switch statement. If no match is found it will
 use the default case.
 NOTE: This fallthrough will not work correctly
 */
let possibleResponseCodes = 201
var responseCodeMeanings = ""
switch possibleResponseCodes {
case 100...199:
    responseCodeMeanings = "Informational Responses"
    fallthrough
case 200...299:
    responseCodeMeanings = "Successful Responses"
    fallthrough
case 300...399:
    responseCodeMeanings = "Redirection Messages"
    fallthrough
case 400...499:
    responseCodeMeanings = "Client Error Responses"
    fallthrough
case 500...599:
    responseCodeMeanings = "Server Error Responses"
    fallthrough
default:
    break
}

if responseCodeMeanings != ""  {
    print("The response meaning of \(possibleResponseCodes) is \(responseCodeMeanings). ")
} else {
    print("The response status code \(possibleResponseCodes) is NOT a valid code.")
}


//MARK: FALLTHROUGH that makes sense.
let integerToDescribe = 25
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer "
}

print(description)


//MARK: RETURN
/*
 EXPLAIN GUARD:
     A guard statement can be thought of as an “early exit”
     Very similar to an if statement except it MUST have an else clause.
     If the guard statement is not true then the else clause is executed.
 EXPLAIN RETURN:
     Occurs in body of function/method
     Causes the program execution to return to the calling function/method
 */
func isNumberEvenOrOdd() {
    var number = 25

    guard number % 2 == 0 else {
        print("\(number) is an odd number.")
        return
    }
    print("\(number) is an even number.")
}

isNumberEvenOrOdd()

//MARK: RETURN WITH EXPRESSION
func add(first: Int, second: Int) -> Int {
    return first + second
}

add(first: 10, second: 15)


//MARK: THROWS
/*
 Sometimes functions fail because they have bad input, or because something went wrong internally.
 Swift lets us throw errors from functions by marking them as throws before their return type,
 then using the throw keyword when something goes wrong.
 -First we need to define an enum that describes the errors we can throw.
 These must always be based on Swift’s existing Error type.
 
 */
enum NumberError: Error {
    case negativeNumber
}

func addTwoNumbers(first: Int, second: Int) throws -> Int {
    if first < 0 || second < 0 {
        throw NumberError.negativeNumber
    }
    return first + second
}

/*
 Swift doesn’t like errors to happen when your program runs,
 which means it won’t let you run an error-throwing function by accident.
 Instead, you need to call these functions using three new keywords:
 do starts a section of code that might cause problems,
 try is used before every function that might throw an error,
 and catch lets you handle errors gracefully.
 If any errors are thrown inside the do block, execution immediately jumps to the catch block.
 Let’s try calling addTwoNumbers() with a parameter that throws an error:
 */

do {
   try addTwoNumbers(first: 15, second: 10)
    print("YAY no negative numbers.")
}
catch {
    print("OPPPS, you have negative number/s")
}


