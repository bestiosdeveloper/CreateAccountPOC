//
//  CreateAccountViewController.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import UIKit

class CreateAccountViewController: BaseViewController {
    
    //MARK:- IBOutlet
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var createNewButton: UIButton!
    
    //MARK:- View Controller Life Cycle
    //MARK:-
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func initialSetup() {
        super.initialSetup()
        
        messageLabel.text = CreateAccount.letCreateAccountMessage
        createNewButton.setTitle(CreateAccount.createNew, for: .normal)
    }
    
    //MARK:- Methods
    //MARK:- Private
    
    //MARK:- Actions
    @IBAction func createNewButtonAction(_ sender: UIButton) {
        AppFlowManager.default.goToNewBorn()
    }
}
