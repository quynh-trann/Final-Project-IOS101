//
//  ProfileViewController.swift
//  ios101-project7-task
//
//  Created by Quynh Tran on 8/6/25.
//

import Foundation
import UIKit
class ProfileViewController: UIViewController {
    
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var logOutButton: UIButton!
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        // Show confirmation alert before logout
        let alert = UIAlertController(title: "Log Out", message: "Are you sure you want to log out?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "Log Out", style: .destructive, handler: { _ in
            // Clear user defaults or any saved user info
            UserDefaults.standard.removeObject(forKey: "userLoggedIn")
            UserDefaults.standard.synchronize()
            
            // Navigate to login screen - example if using a navigation controller:
            self.navigationController?.popToRootViewController(animated: true)
            
            // Or if your app has a login flow as root, reset root view controller:
            // let loginVC = LoginViewController()
            // UIApplication.shared.windows.first?.rootViewController = loginVC
            // UIApplication.shared.windows.first?.makeKeyAndVisible()
            
            print("User logged out")
        }))
        present(alert, animated: true)
        
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            title = "Profile"
          view.backgroundColor = .systemPink
            
            // Optional: Configure profile image
            profileImageView.image = UIImage(systemName: "person.circle.fill")
            profileImageView.tintColor = .systemGray
            profileImageView.contentMode = .scaleAspectFill
            profileImageView.clipsToBounds = true
            profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
            
            // Example user data
            nameLabel.text = "Your Name"
            emailLabel.text = "email@example.com"
        
       
        }
    

}

