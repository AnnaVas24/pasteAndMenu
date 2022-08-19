//
//  ViewController.swift
//  pasteAndMenu
//
//  Created by Vasichko Anna on 18.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMenu()
    }
    
    private func setupMenu() {
        let menuElements: [UIAction] = [
            UIAction(
                title: "Copy",
                image: UIImage(systemName: "doc.on.doc"),
                handler: { _ in
                    
                }
            ),
            UIAction(
                title: "Delete",
                image: UIImage(systemName: "trash"),
                handler: { _ in
                    
                }
            ),
            UIAction(
                identifier: UIAction.Identifier.paste,
                handler: { _ in
                    let pasteboardContent = UIPasteboard.general.string
                    if let pasteboardContent {
                        self.mainTextView.text = pasteboardContent
                    }
                }
            )
        ]
        
        let demoMenu = UIMenu(children: menuElements)
        let plusButton = UIBarButtonItem(image: UIImage(systemName: "plus.circle"), menu: demoMenu)
        navigationItem.rightBarButtonItem = plusButton
        
    }
}

