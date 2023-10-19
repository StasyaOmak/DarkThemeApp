//
//  ViewController.swift
//  DarkThemeApp
//
//  Created by Anastasiya Omak on 18/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
#warning("need to have IBOutlet for Item button and put on leading side")
#warning("Dark Theme off : Dark Theme on")
#warning("need to have IBAction for Item button and logic to present actionSheet")
    
    @IBOutlet weak var messageButton: UIBarButtonItem!
    @IBOutlet weak var folderButton: UIBarButtonItem!
    @IBOutlet weak var darkButton: UIButton!
    
    var darkTheme = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        darkButton.layer.cornerRadius = 10
    }
    
    @IBAction func darkButtonTapped(_ sender: Any) {
        print("darkButtonTapped")
        
        darkTheme = darkTheme ? false : true
        
        if darkTheme {
            
            view.backgroundColor = UIColor.black
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            
            
            darkButton.setTitle("Dark Theme Off", for: .normal)
            darkButton.setTitleColor(UIColor.black, for: .normal)
            darkButton.backgroundColor = .white
            
            messageButton.tintColor = .white
            folderButton.tintColor = .white
            
        } else {
            
            view.backgroundColor = UIColor.white
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
            
            darkButton.setTitle("Dark Theme On", for: .normal)
            darkButton.setTitleColor(UIColor.white, for: .normal)
            darkButton.backgroundColor = .black
            
            messageButton.tintColor = .black
            folderButton.tintColor = .black
            
        }
    }
    
    @IBAction func messageTapped(_ sender: Any) {
        basicMessage(title: "A new message", message: "don't forget to press the button")
    }
    
    @IBAction func folderTapped(_ sender: Any) {
        basicAlert(title: "My Folder", message: "This is my item button!")
    }
    
}

extension UIViewController {
    
    func basicAlert(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alert, animated: true)
    }
}

extension UIViewController {
    
    func basicMessage(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alert, animated: true)
    }
}
