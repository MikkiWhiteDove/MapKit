//
//  MainTBVC.swift
//  MapAppUIKitSwiftUI
//
//  Created by Mishana on 05.09.2022.
//

import UIKit
import SwiftUI

class MainTBVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3
        generateTabBar()
    }
    
    
    private func generateTabBar() {
        viewControllers = [
        generateVC(viewController: navBar(), title: "UIKit Map", image: UIImage(systemName: "list.bullet")),
        generateVC(viewController: navBarLike(), title: "SwiftUI Map", image: UIImage(systemName: "heart"))
        ]
    }
    
    func navBar()-> UIViewController {
        let vc = UIKitVC()
        vc.navigationItem.title = "UIKit Map"
        vc.navigationController?.navigationBar.prefersLargeTitles = true
        return vc
    }
    func navBarLike()-> UIViewController {
        let vc = SwiftUIV()
        let hosting = UIHostingController(rootView: vc)
        return hosting
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
        
    }
}
