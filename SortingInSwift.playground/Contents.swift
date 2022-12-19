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

func simpleArraySum(ar: [Int]) -> Int {
    // Write your code here
    let sum = ar.reduce(0,+)
    return sum
}

print(simpleArraySum(ar: [1,2,3,4,5]))

//Compare  tripplets
let tuple1 = [4,2,3]
let tuple2 = [2,4,1]
//if tuple1.0 < tuple1.0 then
//create a new tuple which denots comparioun point of 2 tuples
var result: [Int] = [0,0]
for i in 0..<tuple1.count
{
    if(tuple1[i]>tuple2[i]){
        result[0]+=1
    }else if (tuple1[i]<tuple2[i]){
        result[1]+=1
    }
}

print(result)




