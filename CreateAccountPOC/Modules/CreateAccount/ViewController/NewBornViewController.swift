//
//  NewBornViewController.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import UIKit

class NewBornViewController: BaseViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var magicButton: UIButton!
    
    //MARK:- View Controller Life Cycle
    //MARK:-
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func initialSetup() {
        super.initialSetup()
        messageLabel.text = CreateAccount.newBornMessage
        magicButton.setTitle(CreateAccount.magic, for: .normal)
    }
    
    //MARK:- Methods
    //MARK:- Private

    
    //MARK:- Actions
    @IBAction func magicButtonAction(_ sender: UIButton) {
        GlobalConstants.shared.startLoading()
        
        DispatchQueue.delay(2.0) {
            GlobalConstants.shared.stopLoading()
        }
    }
}
