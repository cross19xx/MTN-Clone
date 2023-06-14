//
//  DashboardViewController.swift
//  MTN Clone
//
//  Created by Kenneth Kwakye-Gyamfi on 14/06/2023.
//
import UIKit

class DashboardTabBarController: UITabBarController {
    
    private let dashboardNavigationController: UINavigationController = {
        let nc = UINavigationController(rootViewController: HomeViewController())
        return nc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers([
            createTabController(HomeViewController(), title: "Home", icon: "house"),
            createTabController(BuySendViewController(), title: "Buy/Send", icon: "cart"),
            // TODO: Setup the MoMo button
            createTabController(Just4UViewController(), title: "Just4U", icon: "bag"),
            createTabController(MoreViewController(), title: "Get More", icon: "ellipsis")
        ], animated: false)
    }
    
    private func createTabController(_ viewController: UIViewController, title: String, icon: String) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.image = UIImage(systemName: icon)
        navigationController.tabBarItem.title = title
        
        return navigationController
    }
}
