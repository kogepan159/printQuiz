import UIKit

let pointA: String = "Test"
var pointB: String = "test"

if pointA.contains(pointB) {
    print("1")
} else if pointA.lowercased().contains(pointB){
    print("2")
} else if pointA == pointB {
    print("3")
}
