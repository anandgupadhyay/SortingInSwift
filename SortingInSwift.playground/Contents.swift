import UIKit
//Simple Bubble Sort

/***
 Runtime:
 Average: O(N^2)
 Worst: O(N^2)
 Memory:
 O(1)
 ***/

var greeting = "Hello, playground"
public var array = [10,34,32,65,17,87,23,98,13,5,3,88,54,67,31,21,76,98,48,28,83,49,28,6,8,2]
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    //a = 10 b = 5
    a = a + b // 15 (10+5)
    b = a - b // 10 (15-5)
    a = a - b // 5 (15-10)
}
for i in 0..<array.count {
  for j in 1..<array.count - i {
    if array[j] < array[j-1] {
        //Inbuilt Swap Function for array
        array.swapAt(j, j-1)
        //swap Fucntion
        
        //Simple Swap in the code
//      let tmp = array[j-1]
//      array[j-1] = array[j]
//      array[j] = tmp
    }
  }
}
print( "Sorted\(array)")

//Int Stack
struct IntStack {
    var items: [Int] = []
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

//Generic Stack
struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

//============================
public var array1 = [10,34,32,65,17,87,23,98,13,5,3,88,54,67,31,21,76,98,48,28,83,49,28,6,8,2]
/*
 Time and space Complexity is always O(n log n) as the comlexity always depends on the length of an array
 */

//Merge Sort
func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
  guard array.count > 1 else { return array }
  let middleIndex = array.count / 2
  let leftArray = mergeSort(Array(array[0..<middleIndex]))
  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
  return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge<T: Comparable>(leftPile: [T], rightPile: [T]) -> [T] {
  var leftIndex = 0
  var rightIndex = 0
  var orderedPile: [T] = []
  if orderedPile.capacity < leftPile.count + rightPile.count {
    orderedPile.reserveCapacity(leftPile.count + rightPile.count)
  }

  while true {
      guard leftIndex < leftPile.endIndex else {
          orderedPile.append(contentsOf: rightPile[rightIndex..<rightPile.endIndex])
          break
      }
      guard rightIndex < rightPile.endIndex else {
          orderedPile.append(contentsOf: leftPile[leftIndex..<leftPile.endIndex])
          break
      }
      
      if leftPile[leftIndex] < rightPile[rightIndex] {
          orderedPile.append(leftPile[leftIndex])
          leftIndex += 1
      } else {
          orderedPile.append(rightPile[rightIndex])
          rightIndex += 1
      }
  }

  return orderedPile
}

mergeSort(array1)
print("Merge Sort\(array1)")

//====================
public var array2 = [10,34,32,65,17,87,23,98,13,5,3,88,54,67,31,21,76,98,48,28,83,49,28,6,8,2]
//Combo Sort
//complexity Despite being based on the idea of a Bubble Sort the time complexity is just O(n log n), and space complexity for in-place sorting is O(1).


func combSort (input: [Int]) -> [Int] {
    var copy: [Int] = input
    var gap = copy.count
    let shrink = 1.3

    while gap > 1 {
        gap = (Int)(Double(gap) / shrink)
        if gap < 1 {
            gap = 1
        }
    
        var index = 0
        while !(index + gap >= copy.count) {
            if copy[index] > copy[index + gap] {
                copy.swapAt(index, index + gap)
            }
            index += 1
        }
    }
    return copy
}

combSort(input: array2)
print("Sorted Array:\(array2)")

//=========================
//Insertion sort
//Complexity O(n²)
extension Array where Element: Comparable {
        
    func insertionSort(by areInIncreasingOrder: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        
        for i in 1..<data.count { // 1
            let key = data[i] // 2
            var j = i - 1
            
            while j >= 0 && areInIncreasingOrder(key, data[j]) { // 3
                data[j+1] = data[j] // 4
                
                j = j - 1
            }
            
            data[j + 1] = key // 5
        }
        
        return data
    }
}
