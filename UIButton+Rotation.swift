// RotatingButton
// Created by Daniel Budyński 👾
// https://github.com/Budyn/
// MacOS 10.13, Swift 4.0

import UIKit

extension UIButton {

    func rotate(time: Double = 0.7) {
        UIView.animateKeyframes(withDuration: time,
                                delay: 0.0,
                                options: [],
                                animations: {
                                    self.prepareAnimation()
        }, completion: { _ in
            self.finishAnimation()
        })
    }

    private func prepareAnimation() {
        UIView.addKeyframe(withRelativeStartTime: 0,
                           relativeDuration: 0.5,
                           animations: {
                            self.transform = CGAffineTransform(rotationAngle: -.pi)
        })
        UIView.addKeyframe(withRelativeStartTime: 0.5,
                           relativeDuration: 0.5,
                           animations: {
                            self.transform = CGAffineTransform(rotationAngle: -.pi * 2)
        })
    }

    private func finishAnimation() {
        self.transform = .identity
    }
    
}
