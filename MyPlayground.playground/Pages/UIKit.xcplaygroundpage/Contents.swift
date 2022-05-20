//: [Previous](@previous)

import Foundation
import UIKit

//UIKit is an Apple framework that contains many classes for common elements that most iOS apps share, i.e. for labels, buttons, text fields and images.

let button = UIButton(frame: CGRect(x:20,y:20,width: 200,height: 60))

button.addAction(UIAction { _ in
    print("You tapped the button")
}, for: .touchDown)

button.setTitle("Email", for: .normal)
button.backgroundColor = .blue
//: [Next](@next)
