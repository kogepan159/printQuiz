import UIKit

var pointA: Array = ["1", "3", "5"]
var pointB: Array = ["2", "4"]

pointA = pointA + pointB
pointA = pointA + pointB
pointA.append("123")

print(pointA.count)
