import UIKit

final class ScrollViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self   
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Scrollview Frame: \(scrollView.frame) Bounds: \(scrollView.bounds)")
    }
    
}
