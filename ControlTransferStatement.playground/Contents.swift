import UIKit

/*
 Control transfer statement: What is it?

 Control transfer statements can change the order in
 which code in your program is executed by unconditionally
 transferring program control from one piece of code to another.
*/

//In swift what are the 5 control transfer statements?
//continue statement
//break statement
//fallthrough statement
//return statement
//throw statement

//MARK: CONTINUE
//let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
//var newNumbers: [Int] = []
//for number in numbers {
//    if number == 8 {
//         continue
//    }
//
//    newNumbers.append(number)
//    print(newNumbers)
//}
//
////MARK: BREAK WITH LOOP
//var totalCount = 0
//for number in numbers {
//    if number == 6 {
//         break
//    }
//    totalCount += 1
//}
//
//print(totalCount)

//MARK: BREAK WITH SWITCH STATEMENT
//let possibleResponseStatusCodes = 201
//var responseCodeMeaning = ""
//switch possibleResponseStatusCodes {
//case 100...199:
//    responseCodeMeaning = "Informational Responses"
//case 200...299:
//    responseCodeMeaning = "Successful Responses"
//case 300...399:
//    responseCodeMeaning = "Redirection Messages"
//case 400...499:
//    responseCodeMeaning = "Client Error Responses"
//case 500...599:
//    responseCodeMeaning = "Server Error Responses"
//default:
//    break
//}
//
//if responseCodeMeaning != ""  {
//    print("The response meaning of \(possibleResponseStatusCodes) is \(responseCodeMeaning). ")
//} else {
//    print("The response status code \(possibleResponseStatusCodes) is NOT a valid code.")
//}


//MARK: FALLTHROUGH
//let possibleResponseStatusCodes = 201
//var responseCodeMeaning = ""
//switch possibleResponseStatusCodes {
//case 100...199:
//    responseCodeMeaning = "Informational Responses"
//    fallthrough
//case 200...299:
//    responseCodeMeaning = "Successful Responses"
//    fallthrough
//case 300...399:
//    responseCodeMeaning = "Redirection Messages"
//    fallthrough
//case 400...499:
//    responseCodeMeaning = "Client Error Responses"
//    fallthrough
//case 500...599:
//    responseCodeMeaning = "Server Error Responses"
//    fallthrough
//default:
//    break
//}
//
//if responseCodeMeaning != ""  {
//    print("The response meaning of \(possibleResponseStatusCodes) is \(responseCodeMeaning). ")
//} else {
//    print("The response status code \(possibleResponseStatusCodes) is NOT a valid code.")
//}


//MARK: FALLTHROUGH that makes sense.
//let integerToDescribe = 25
//var description = "The number \(integerToDescribe) is"
//
//switch integerToDescribe {
//case 2, 3, 5, 7, 11, 13, 17, 19:
//    description += " a prime number, and also"
//    fallthrough
//default:
//    description += " an integer "
//}
//
//print(description)


//MARK: RETURN
//func isNumberEvenOrOdd() {
//    var number = 25
//
//    guard number % 2 == 0 else {
//        print("\(number) is an odd number.")
//        return
//    }
//    print("\(number) is an even number.")
//}
//
//isNumberEvenOrOdd()

//MARK: RETURN WITH EXPRESSION
func add(first: Int, second: Int) -> Int {
    return first + second
}

add(first: 10, second: 15)


//MARK: THROWS
enum NumberError: Error {
    case negativeNumber
}

func addTwoNumbers(first: Int, second: Int) throws -> Int {
    if first < 0 || second < 0 {
        throw NumberError.negativeNumber
    }
    return first + second
}

do {
   try addTwoNumbers(first: 15, second: 10)
    print("YAY no negative numbers.")
}
catch {
    print("OPPPS, you have negative number/s")
}


