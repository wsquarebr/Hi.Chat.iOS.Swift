//
//  ViewController.swift
//  HiChat
//
//  Created by Luan on 12/12/19.
//  Copyright © 2019 Luan. All rights reserved.
//

import UIKit
import AVFoundation

class ChatIniciarPermissoes: UIViewController {
    
    @IBOutlet weak var btnIniciarAtendimento: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Chat"
    }

    @IBAction func actIniciarAtendimento(_ sender: Any) {
        let chat = UIStoryboard.init(name: "Chat", bundle: nil).instantiateViewController(withIdentifier: "ChatWebNav")
        self.present(chat, animated: true, completion: nil)
    }
}

