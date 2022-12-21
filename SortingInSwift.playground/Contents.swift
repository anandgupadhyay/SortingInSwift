//import UIKit
//////Simple Bubble Sort
////
/////***
//// Runtime:
//// Average: O(N^2)
//// Worst: O(N^2)
//// Memory:
//// O(1)
//// ***/
////
////var greeting = "Hello, playground"
////public var array = [10,34,32,65,17,87,23,98,13,5,3,88,54,67,31,21,76,98,48,28,83,49,28,6,8,2]
////func swapTwoInts(_ a: inout Int, _ b: inout Int) {
////    //a = 10 b = 5
////    a = a + b // 15 (10+5)
////    b = a - b // 10 (15-5)
////    a = a - b // 5 (15-10)
////}
////for i in 0..<array.count {
////  for j in 1..<array.count - i {
////    if array[j] < array[j-1] {
////        //Inbuilt Swap Function for array
////        array.swapAt(j, j-1)
////        //swap Fucntion
////
////        //Simple Swap in the code
//////      let tmp = array[j-1]
//////      array[j-1] = array[j]
//////      array[j] = tmp
////    }
////  }
////}
////print( "Sorted\(array)")
////
//////Int Stack
////struct IntStack {
////    var items: [Int] = []
////    mutating func push(_ item: Int) {
////        items.append(item)
////    }
////    mutating func pop() -> Int {
////        return items.removeLast()
////    }
////}
////
//////Generic Stack
////struct Stack<Element> {
////    var items: [Element] = []
////    mutating func push(_ item: Element) {
////        items.append(item)
////    }
////    mutating func pop() -> Element {
////        return items.removeLast()
////    }
////}
////
//////============================
////public var array1 = [10,34,32,65,17,87,23,98,13,5,3,88,54,67,31,21,76,98,48,28,83,49,28,6,8,2]
/////*
//// Time and space Complexity is always O(n log n) as the comlexity always depends on the length of an array
//// */
////
//////Merge Sort
////func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
////  guard array.count > 1 else { return array }
////  let middleIndex = array.count / 2
////  let leftArray = mergeSort(Array(array[0..<middleIndex]))
////  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
////  return merge(leftPile: leftArray, rightPile: rightArray)
////}
////
////func merge<T: Comparable>(leftPile: [T], rightPile: [T]) -> [T] {
////  var leftIndex = 0
////  var rightIndex = 0
////  var orderedPile: [T] = []
////  if orderedPile.capacity < leftPile.count + rightPile.count {
////    orderedPile.reserveCapacity(leftPile.count + rightPile.count)
////  }
////
////  while true {
////      guard leftIndex < leftPile.endIndex else {
////          orderedPile.append(contentsOf: rightPile[rightIndex..<rightPile.endIndex])
////          break
////      }
////      guard rightIndex < rightPile.endIndex else {
////          orderedPile.append(contentsOf: leftPile[leftIndex..<leftPile.endIndex])
////          break
////      }
////
////      if leftPile[leftIndex] < rightPile[rightIndex] {
////          orderedPile.append(leftPile[leftIndex])
////          leftIndex += 1
////      } else {
////          orderedPile.append(rightPile[rightIndex])
////          rightIndex += 1
////      }
////  }
////
////  return orderedPile
////}
////
////mergeSort(array1)
////print("Merge Sort\(array1)")
////
//////====================
////public var array2 = [10,34,32,65,17,87,23,98,13,5,3,88,54,67,31,21,76,98,48,28,83,49,28,6,8,2]
//////Combo Sort
//////complexity Despite being based on the idea of a Bubble Sort the time complexity is just O(n log n), and space complexity for in-place sorting is O(1).
////
////
////func combSort (input: [Int]) -> [Int] {
////    var copy: [Int] = input
////    var gap = copy.count
////    let shrink = 1.3
////
////    while gap > 1 {
////        gap = (Int)(Double(gap) / shrink)
////        if gap < 1 {
////            gap = 1
////        }
////
////        var index = 0
////        while !(index + gap >= copy.count) {
////            if copy[index] > copy[index + gap] {
////                copy.swapAt(index, index + gap)
////            }
////            index += 1
////        }
////    }
////    return copy
////}
////
////combSort(input: array2)
////print("Sorted Array:\(array2)")
////
//////=========================
//////Insertion sort
//////Complexity O(n²)
////extension Array where Element: Comparable {
////
////    func insertionSort(by areInIncreasingOrder: ((Element, Element) -> Bool) = (<)) -> [Element] {
////        var data = self
////
////        for i in 1..<data.count { // 1
////            let key = data[i] // 2
////            var j = i - 1
////
////            while j >= 0 && areInIncreasingOrder(key, data[j]) { // 3
////                data[j+1] = data[j] // 4
////
////                j = j - 1
////            }
////
////            data[j + 1] = key // 5
////        }
////
////        return data
////    }
////}
//
//var inputString = "{([])}[](){}"//invalid"{[(][}"
//var array: [String] = []
//print(array)
//
//
////for (index, char) in inputString.enumerated() {
//////    print("index = \(index), character = \(char)")
////    if index == 0{
////        array.append(chat)
////
////    }
////}
//
import Foundation
import Darwin



/*
 * Complete the 'fizzBuzz' function below.
 *
 * The function accepts INTEGER n as parameter.
 

func decideFizBuss(i: Int)-> String{
    
    switch(i%3==0,i%5==0){
    case(true,true):
        return "FizzBuzz"
    case(true,false):
        return "Fizz"
    case(false,true):
        return "Buzz"
    default:
        return "\(i)"
    }
}
func fizzBuzz(n: Int) -> Void {
    
    
    // Write your code here
    var result: String = ""
    for i in 1...n{
        result += decideFizBuss(i: i)
    }
    print("Final Resul: \n\(result)")
}

let n: Int = 15
if n >= 1 {fizzBuzz(n: 10)}

 */


/*
 var i = 0
     var n = 0
     var answer = 0
     var last: Character? = nil
     
     for  c in s{
         if let ch = last, ch !=c , i>0, n>0{
             result+=min(i,n)
             if c == Character("1"){
                 i = 0
             }else{
                 n = 0
             }
         }
         
         if c == Character("1"){
             i+=1
         }else{
             n+=1
         }
         last = c
     }
     if (i>0 , n>0){
         result+=min (i,n)
     }
     
     return result
 
 
 another solution
 
 // // Write your code here
     //  var answ: Int = 0
     //  var i: Int = 0
      
     //  while i<s.count{
     //      var countZero = 0
     //      var countOne = 0
     //      if(s[i] == "0"){
     //          while (i<s.count && s[i] == "0") {
     //              countZero+=1
     //              i+=1
     //          }
     //          var j = i
     //          while (j<s.count && s[j] == "1"){
     //              countOne+=1
     //              j+=1
     //          }
     //      }else{
     //          while (i<s.count && s[i] == "1") {
     //              countOne+=1
     //              i+=1
     //          }
     //          var j = i
     //          while (j<s.count && s[j] == "0"){
     //              countZero+=1
     //              j+=1
     //          }
     //      }
     //      answ = answ + min (countZero,countOne)
     //  }
     //  return answ
 
 */


/*
 func findLowestStartingStair(jumps: [Int]) -> Int {
     // Write your code here
     var result = [String]()
     for i in 0..<jumps {
         var extra = ""
         for j in 0..<jumps{
             extra+= (j >= jumps - (1+1)) ? "#" : " "
         }
         result.append(extra)
     }
     return result.count
     
 }
 func findLowestStartingStair(jumps: [Int]) -> Int {
     // Write your code here
     var result = [String]()
     for i in 0..<jumps {
         var extra = ""
         for j in 0..<jumps{
             extra+= (j >= jumps - (1+1)) ? "#" : " "
         }
         result.append(extra)
     }
     return result.count
     
 }
 */
/*
 var result = [String]()
     for i in 0..<jumps {
         var extra = ""
         for j in 0..<jumps{
             extra+= (j >= jumps - (1+1)) ? "#" : " "
         }
         result.append(extra)
     }
     return result
 */


//Sum of Integer Numbers

//func simpleArraySum(ar: [Int]) -> Int {
//    // Write your code here
//    let sum = ar.reduce(0,+)
//    return sum
//}
//
//print(simpleArraySum(ar: [1,2,3,4,5]))

//Compare  tripplets
//let tuple1 = [4,2,3]
//let tuple2 = [2,4,1]
////if tuple1.0 < tuple1.0 then
////create a new tuple which denots comparioun point of 2 tuples
//var result: [Int] = [0,0]
//for i in 0..<tuple1.count
//{
//    if(tuple1[i]>tuple2[i]){
//        result[0]+=1
//    }else if (tuple1[i]<tuple2[i]){
//        result[1]+=1
//    }
//}
//
//print(result)

//Diagonal Difference of Matrix
//let matrixx: [[Int]] = [[3,0,0],[11,2,4],[4,5,6],[10,8,-12]]
//print(matrixx)
//var sum1 : Int = 0,sum2 : Int = 0
//var maxLengthArray = (matrixx.compactMap { aray in
//    aray.count
//}).max()
//print(Int(maxLengthArray!))
//var j = maxLengthArray
//
//for i in 0..<matrixx.count {
//    if matrixx[i].count==maxLengthArray! {
//    print("i[\(i)][\(i)]:\(matrixx[i][i])")
//    sum1+=matrixx[i][i]
//        print("j[\(i)][\(j)]:\(matrixx[i][i-(matrixx[i].count)-1])")
//    sum2+=matrixx[j][i-(matrixx[i].count)-1]
//        j-=1
//    }else{
//
//    }
//}
//let diff = abs(sum1-sum2)

//func diagonalDifference(arr: [[Int]]) -> Int {
//    // Write your code here
//    let n =  arr.count
//    var primaryDiagonalSum = 0
//    var secondaryDiagonalSum = 0
//    for index in 0..<n {
//        primaryDiagonalSum   +=  arr[index][index]
//        secondaryDiagonalSum +=  arr[index][n-index-1]
//    }
//    let difference = abs(primaryDiagonalSum - secondaryDiagonalSum)
//    return difference
//}
//
//print(diagonalDifference(arr: matrixx))

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =


// Ratio of Positive Negative and Zero

//let array = [-4, 3, -9, 0, 4, 1]//[1,1,0,-1,-1]
//let ratio = array.map{
//    if $0>0{
//        return "P"
//    }
//    else if $0<0{
//        return "N"
//    }
//    else{
//        return "O"
//    }
//} as [String]
//
//let histogram = ratio.reduce(into: [:]){ count,word in
//    count[word, default: 0]+=1
//}
//
//var ordering: [Int] = Array(repeating: 0, count: 3)//next.map{$0.value}
//ordering[0] = histogram["P"] ?? 0
//ordering[1] = histogram["N"] ?? 0
//ordering[2] = histogram["O"] ?? 0
//var finalResult = ordering.map{Double(Double($0)/Double(array.count))}
//
//extension Double {
//    var sizDigits: Double {
//        return (self * 1000000).rounded(.toNearestOrEven) / 1000000
//    }
//}
//finalResult = finalResult.map{
//    $0.sizDigits
//}
//
//for number in finalResult{
//    print(String(format: "%.6f", number))
//}

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

// Histogram
//let arr = [1, 1, 0, -1, -1]// ["abcd", "abcd", "abc", "pqr", "abc"]
//let counts = arr.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }
//print(counts)

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
// Recursive function to convert decimal to binary
//func convertBinary(num: Int)->Int{
//   var StoreBinary:Int
//
//   // Base condition
//   if (num != 0){
//      // Converting decimal to binary
//      StoreBinary = (num%2)+10*convertBinary(num: num/2)
//      return StoreBinary
//   }
//   else{
//      return 0
//   }
//}
//
//
//var decimalNum = 11
//
//print("Decimal number is: \(decimalNum)")
//print("Converted binary number is:\(convertBinary(num :decimalNum))")

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

// staircase Pattern
/*
     #
    ##
   ###
  ####
 #####
######

let n = 6
//stride(from:n-1,through:0,by:-1)
var str = ""
for i in 0..<n{
    var str1 = ""
    for j in 1..<n{
        if(j>(n-i-1)){
            str1+="#"
        }
        else{
            str1+=" "
        }
    }
    str1+="#"
    if i != n {
        str1+="\n"
    }
    str+=str1
}
print(str, terminator: "")
print("/n")



 //stride(from:n-1,through:0,by:-1)
 for i in 0..<n+1{
     var str = ""
     for j in 0..<n{
         if(j>(n-i-1)){
             str+="# "
         }
         else{
             str+=" "
         }
     }
     str+="#"
     print(str)
 }
 
      #
     # #
    # # #
   # # # #
  # # # # #
 # # # # # #
 

#
##
###
####
#####
######
Expected Output

Download
#
##
###
####
#####
######


//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

 //Min  Max Sum
//arr [1,2,3,4,5]
//The minimum sum is  and the maximum sum is . The function prints
//Output - "10 14"
var arr = [1,2,3,4,5]
var arrSum: [Int] = Array(repeating: 0, count: arr.count)
for i in 0..<arr.count{
    for j in 0..<arr.count{
        if j != i{
            arrSum[i] += arr[j]
//            print(arr[j])
        }
    }
//    print("------")
}

print("\(arrSum.min()!) \(arrSum.max()!)")
//0 14
    
 */

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

//Birthday Cacke Candles
//You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.
//Input - arr = [4,4,1,2]
// output -2
//The maximum height candles are 4  units high. There are 2 of them, so return 2.

//let arr = [4,4,1,2]
//
//func birthdayCakeCandles(candles: [Int]) -> Int {
//    // Write your code here
//    let finCount = candles.reduce(into: [:]) { count,number in
//        return count[number, default:0]+=1
//    }
//
//    let result = finCount[candles.max()!]
//    return result! as Int
//}
//
//print(birthdayCakeCandles(candles: arr))


//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

//12 Hour to 24 Hour AM PM conversion
//input -  12:01:00PM
//output - 12:01:00
//input -  12:01:00AM
//output - 00:01:00
//input -  01:01:00PM
//output - 13:01:00

//var date: String = "03:01:00AM"
//func sliceString(str: String, start: Int, end: Int) -> String {
//    let data = Array(str)
//    return String(data[start..<end])
//}
//
//if(date.count==10){
//    date = date.uppercased()
//    var hh: Int = Int(date.prefix(2))!
//    if date.hasSuffix("PM"){
//
//        if hh>=1 && hh<=11 {
//            hh += 12
//        }
//    }else{
//        if hh==12 {
//            hh = 00
//        }
//    }
//
//    print("24 Hour - \(String(format: "%02d", hh)):\(sliceString(str:date, start: 3,end : date.count-2))")
//}


//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =


////Search in Array
//let works = ["foo", "bar"].first(where: { ($0 == "foo") } )
//
//print(works!)

//array aare value type
//var arr = [1,2,3,4]
//var bar = arr
//bar[0]=2
//print("\(arr)\n\(bar)")

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

//Random generation
//print(arc4random())
//print(arc4random_uniform(10))
//print(drand48())

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

//Merge Sort
func customMergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array } // Mark 1
    
    let middlePointer = array.count/2 // Mark 2
    
    let left = customMergeSort(array: Array(array[0..<middlePointer])) // Mark 3
    let right = customMergeSort(array: Array(array[middlePointer..<array.count])) // Mark 3
    return mergeArrays(left,right) // Mark 4
}

func mergeArrays(_ left: [Int],_ right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var result = [Int]()
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            result.append(right[rightIndex])
            rightIndex += 1
        } else {
            result.append(left[leftIndex])
            result.append(right[rightIndex])
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        result.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        result.append(right[rightIndex])
        rightIndex += 1
    }
    
    return result
}

let testMikeAndPepijnArray = [1,11,123,23,2,5,64,546,45,989,9084,312,645,66,7,33,55,77,7,8,88,2,4]
//print(customMergeSort(array: testMikeAndPepijnArray))

let arr1 = [1,5,3,6]
let arr2 = [2,4,6,8]

print(mergeArrays(arr1, arr2))
print("= = = = = = = = = = ")
    
//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
//Bubble Sort
var data_set = [1,3,6,2,4,5]
var last_position = data_set.count - 1
var swap = true
while swap == true {
    swap = false
    for i in 0..<last_position {
        if data_set[i] > data_set[i + 1] {
            let temp = data_set [i + 1]
            data_set [i + 1] = data_set[i]
            data_set[i] = temp
            
            swap = true
        }
    }
}
print(data_set)

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

//Email validataion
private func validate(email: String?) -> Bool {
        guard let email = email else { return false }
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-za-z]{2,64}"
        let pred = NSPredicate(format: "SELF MATCHES %@", regex)
        return pred.evaluate(with: email)
    }


//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

//property wrapper
@propertyWrapper
struct Scores {
    private let minValue = 0
    private let maxValue = 100
    private var value: Int
    init(wrappedValue value: Int){
        self.value = value
    }
    var wrappedValue: Int {
        get {
            return max(min(value, maxValue), minValue)
        }
        set {
            value = newValue
        }
    }
}

//@Scores var scores: Int = 0
//Property wrappers are not yet supported in top-level code
//Generic
@propertyWrapper
struct Constrained<Value: Comparable> {
    private var range: ClosedRange<Value>
    private var value: Value
    init(wrappedValue value: Value, _ range: ClosedRange<Value>) {
        self.value = value
        self.range = range
    }
    var wrappedValue: Value {
        get {
            return max(min(value, range.upperBound), range.lowerBound)
        }
        set {
            value = newValue
        }
    }
}
//@Constrained(0...100)
//var scores: Int = 0


//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

//cellcious to fahrenheit
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

//= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

print("\n--------------\nAnand Upadhyay\n--------------\n")




