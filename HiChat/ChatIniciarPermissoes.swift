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
    
    var permitirCamera = false
    var permitirGaleria = false
    var permitirAudio = false
    var permitirStorage = false
    @IBOutlet weak var btnIniciarAtendimento: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Chat"
    }


    @IBAction func actIniciarAtendimento(_ sender: Any) {
        let proximaTela = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChatViewController")
        proximaTela.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(proximaTela, animated: true)
        self.dismiss(animated: true)
    }
    
}

