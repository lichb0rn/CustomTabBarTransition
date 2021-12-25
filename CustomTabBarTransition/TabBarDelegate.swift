//
//  TabBarDelegate.swift
//  CustomTabBarTransition
//
//  Created by Miroslav Taleiko on 16.07.2021.
//

import UIKit

class TabBarDelegate: NSObject, UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        let selectedVC = tabBarController.selectedViewController
        if selectedVC == nil || viewController == selectedVC { return false }
        
        guard let controllerIndex = tabBarController.viewControllers?.firstIndex(of: viewController) else { return true }
        guard let fromView = selectedVC?.view, let toView = viewController.view else { return true }
        
        let viewSize: CGRect = fromView.frame
        let scrollRight: Bool = controllerIndex > tabBarController.selectedIndex

        fromView.superview?.addSubview(toView)
        let screenWidth: CGFloat = UIScreen.main.bounds.size.width
        toView.frame = CGRect(x: scrollRight ? screenWidth : -screenWidth, y: viewSize.origin.y, width: screenWidth, height: viewSize.size.height)
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut]) {
            fromView.frame = CGRect(x: scrollRight ? -screenWidth : screenWidth, y: viewSize.origin.y, width: screenWidth, height: viewSize.size.height)
            toView.frame = CGRect(x: 0, y: viewSize.origin.y, width: screenWidth, height: viewSize.size.height)
        } completion: { success in
            if success {
                fromView.removeFromSuperview()
                tabBarController.selectedIndex = controllerIndex
            }
        }

        
        return false
    }
}
