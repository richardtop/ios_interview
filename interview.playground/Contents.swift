import UIKit

func deferQuestion() {
    defer {
        print("A")
    }

    defer {
        print("B")
        defer {
            print("C")
        }
        print("D")
    }

    defer {
        print("E")
    }

    print("F")
}

// FEBDCA
print("Defer Interview Question")
deferQuestion()


func dispatchQuestion() {
    print("A")
    DispatchQueue.global(qos: .default).async {
        print("B")
        DispatchQueue.main.async {
            print("C")
        }
        print("D")

        DispatchQueue.main.sync {
            print("E")
        }

        DispatchQueue.main.async {
            print("F")
            DispatchQueue.main.sync {
                print("G")
            }

        }
        print("H")
    }
    print("I")
}
// AIBDCEHF
// G never be printed


print("Dispatch/GCD Interview Question")
dispatchQuestion()


final class TestClass {
    var completionHandler: (() -> Void)?

    func exampleEscaping(handler: @escaping () -> Void) {
        self.completionHandler = handler
        handler()
    }

    func exampleNoEscape(handler: () -> Void) {
        handler()
//        self.completionHandler = handler
    }
}
