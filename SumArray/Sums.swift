//  Copyright (c) 2017 Lighthouse Labs. All rights reserved.
//
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

struct Sums {
  func sumItems(_ array: [Any]) -> Int {
    // Sum all numbers in the array
//    if there is only one number in the array, return it
//    if array.count == 1 {
//      print(array.first as! Int)
//      return array.first as! Int
//    } else {
//    go through each item in array   
      for item in array {
        
  //      item is an array of int
        if item is [Int] {
          print("int array")
          let itemArray = item as! [Int]
          
          if itemArray.count == 1 {
            print(itemArray.first as! Int)
            return itemArray.first as! Int
          }
          
  //        recurse if an item in the array is another array
          return sumItems(_:item as! [Int])
        
  //      item is not an array
        } else {
          print(item as! Int)
  //        new array from original array but without the first item
          var newArray = array
          newArray.remove(at: 0)
  //        add the first item in original array to the sum of the new array
  //        first item in the new array was removed so it's not added twice
//          recurse with new array
          return (item as! Int) + sumItems(_:newArray as! [Int])
        }
      }
    return 0
  }
  
}

//      switch item {
//        case let [1] as [Int]:
//          if x = 1 {
//            return 1
//          }
//        }
//      }
//      let intItem = Int(item)!
//      return item + sumItems(_:array)
//    }
//    var _arr = array
//
//    return Int(String(describing: _arr))!

//    //    for _ in array {
//      var intItem = Int(String(describing: _))
//      return intItem!

//      return intItem! + sumItems(_:[item])

//      if let innerArray = item as? [Any] {
//        return sumItems(innerArray)
//      } else {
//        return Int(String(describing: item))! + Int(String(describing: item))!
//      }
//    }
