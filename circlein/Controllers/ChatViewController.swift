//
//  ChatViewController.swift
//  circlein
//
//  Created by Menem Ragab on 12/30/18.
//  Copyright © 2018 Menem Ragab. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var burgerMenuBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.burgerMenuBarButton.target = self.revealViewController()
        self.burgerMenuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
