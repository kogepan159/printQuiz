import UIKit

var pointA: String = "1"
var pointB: String = "2,23"

pointA = pointA + pointB
pointB = String("2,23".split(separator: ",").first!)
pointA = pointA + pointB

print(pointA.split(separator: ",").last!)
