//
//  ViewController.swift
//  GCD
//
//  Created by Vuk on 2/18/17.
//  Copyright © 2017 Vuk. All rights reserved.//
//

import UIKit

class ViewController: UIViewController {
    
    var IntedzerskiBlok: ((Int) -> Int)? = nil
    
    func deklarisiIPozoviBlokKvadrataSestice() {
        var kvadrat = IntedzerskiBlok
        kvadrat = { (broj) in
            return broj * broj
        }
        print("Blok vraca vrednost \(kvadrat!(6))")
    }
    
    func blokKaoFunkcija() {
        var vreme = "kisovito"
        print("Vreme je, pre nego sto sam ukljucio blok, \(vreme)")
        
        let promenaVremena: ((Void) -> Void) = {
            vreme = "suncano"
            print("Vreme unutar mog bloka je \(vreme)")
        }
        promenaVremena()
    }
    
    func koriscenjeInlineBloka() {
        let niz: NSArray = ["Selimovic","Andric","Ducic","Antic","Beckovic"]
        niz.enumerateObjects({ (objekat, indeks, stop) in
            let pisac: String = objekat as! String
            print("Prezime pisca: \(pisac.uppercased())")
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        deklarisiIPozoviBlokKvadrataSestice()
        blokKaoFunkcija()
        koriscenjeInlineBloka()
    }



}

