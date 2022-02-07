//
//  RotationViewController.swift
//  RotationViewController
//
//  Created by Richard Topchii on 25.7.2021.
//

import UIKit

final class RotationViewController: UIViewController {
    
    @IBOutlet weak var redBorderView: UIView!
    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var rotationGestureRecognizer: UIRotationGestureRecognizer!
    
    @IBAction func rotationDetected(_ sender: UIRotationGestureRecognizer) {
        purpleView.transform = CGAffineTransform.init(rotationAngle: sender.rotation)
        print("Rotated Frame: \(purpleView.frame) Bounds: \(purpleView.bounds)")
        repositionRedView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        repositionRedView()
        print("Initial Frame: \(purpleView.frame) Bounds: \(purpleView.bounds)")
    }
    
    
    private func repositionRedView() {
        redBorderView.frame = purpleView.frame
    }
}
