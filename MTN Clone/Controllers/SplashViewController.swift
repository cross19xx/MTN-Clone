//
//  SplashViewController.swift
//  MTN Clone
//
//  Created by Kenneth Kwakye-Gyamfi on 14/06/2023.
//
import UIKit

class SplashViewController: UIViewController {
    
    private let logo: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "Logo")
        
        return imageView
    }()
    
    private let loader: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.startAnimating()
        
        return activityIndicator
    }()
    
    private let loaderText: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Please wait"
        label.font = UIFont.systemFont(ofSize: 14)
        

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "AccentColor")
        
        view.addSubview(logo)
        view.addSubview(loader)
        view.addSubview(loaderText)
    }
    
    override func viewDidLayoutSubviews() {
        addConstraints()
    }
    
    private func addConstraints() {
        let safeArea = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            // Logo constraints
            logo.widthAnchor.constraint(equalToConstant: 156),
            logo.heightAnchor.constraint(equalToConstant: 156),
            logo.topAnchor.constraint(equalTo: safeArea.topAnchor),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loaderText.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -16),
            loaderText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loader.bottomAnchor.constraint(equalTo: loaderText.topAnchor, constant: -16),
            loader.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        Task {
            await navigateToDashboard()
        }
    }
    
    private func navigateToDashboard() async {
        let delay: Double = 1
        do {
            try await Task.sleep(nanoseconds: UInt64(delay * Double(NSEC_PER_SEC)))
            navigationController?.setViewControllers([DashboardTabBarController()], animated: false)
        } catch {
            print("Error navigating to the dashboard")
        }
    }
}
