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
    var mainText = "Dark Theme Off"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        darkThemeIsOn(ison: darkTheme)
        darkButton.layer.cornerRadius = 10
    }
    
    @IBAction func darkButtonTapped(_ sender: Any) {
        print("darkButtonTapped")
        darkThemeIsOn(ison: darkTheme)
    }
    
    func darkThemeIsOn(ison: Bool) {
        mainText = ison ? "Dark Theme Off" : "Dark Theme On"
        darkButton.setTitle(mainText, for: .normal)
        darkButton.setTitleColor(ison ? UIColor.black : UIColor.white, for: .normal)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: !ison ? UIColor.black : UIColor.white]
        darkButton.backgroundColor = !ison ? .black : .white
        view.backgroundColor = ison ? UIColor.black : UIColor.white
        messageButton.tintColor = !ison ? .black : .white
        folderButton.tintColor = !ison ? .black : .white
        darkTheme.toggle()
    }
    
    @IBAction func messageTapped(_ sender: Any) {
        basicMessage(title: "A new message", message: "don't forget to press the button")
    }
    
    @IBAction func folderTapped(_ sender: Any) {
        basicAlert(title: "My Folder", message: "This is my item button!")
    }
    
}


