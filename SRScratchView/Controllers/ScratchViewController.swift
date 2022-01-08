//
//  ViewController.swift
//  SRScratchView
//
//  Created by apple on 04/01/22.
//

import UIKit

class ScratchViewController: UIViewController {
    
//Outlets
    @IBOutlet weak var scratchImageView: SRScratchView!
    @IBOutlet weak var scratchCardView: UIView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var trophyBgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupInitial()
    }
    func setupInitial() {
        self.bgView.isHidden = true
        scratchImageView.lineWidth = 40.0
        self.scratchImageView.delegate = self
        
        self.scratchImageView.layer.cornerRadius = 8
        self.scratchImageView.layer.masksToBounds = true
        
        self.scratchCardView.layer.cornerRadius = 8
        self.scratchCardView.layer.masksToBounds = true
        
        self.trophyBgView.layer.cornerRadius = self.trophyBgView.frame.height/2
        self.trophyBgView.layer.masksToBounds = true

    }

}
//ScratchView delegate
extension ViewController:SRScratchViewDelegate {
    func scratchCardEraseProgress(eraseProgress: Float) {
        print(eraseProgress)
        if eraseProgress > 60.0{
            UIView.animate(withDuration: 0.5, animations: {
                self.scratchImageView.alpha = 0.0
                self.bgView.isHidden = false
            })
            
        }
    }
    
    
}
