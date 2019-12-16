//
//  MsbButton.swift
//  HiChat
//
//  Created by Luan on 12/12/19.
//  Copyright © 2019 Luan. All rights reserved.
//

import Foundation
import UIKit

class MsbButton_Preenchido: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder);
        
        estilizarControle();
    }
    
    
    required override init(frame: CGRect) {
        
        super.init(frame: frame);
        
        estilizarControle();
    }
    
    func estilizarControle()
    {
        super.titleLabel?.font = UIFont(name: Estilo.Fontes.bold, size:16)
        super.titleLabel?.textAlignment = NSTextAlignment.center
        super.setTitleColor(Estilo.Cores.branco, for: UIControlState.normal)
        super.backgroundColor = Estilo.Cores.c_22C1FB
        super.contentVerticalAlignment   = UIControlContentVerticalAlignment.center;
        super.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center;
        super.layer.cornerRadius = 12
        super.layer.borderWidth = 0
        super.clipsToBounds = true;
        super.layer.borderColor = Estilo.Cores.c_22C1FB.cgColor
    }
}
