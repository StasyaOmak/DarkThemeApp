//
//  Extensions.swift
//  DarkThemeApp
//
//  Created by Anastasiya Omak on 20/10/2023.
//

import UIKit


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
