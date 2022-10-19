//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Ethan Gonsalves on 2022-10-18.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var cardImageView: UIImageView!
    var cards: [UIImage] = Card.allValues
    
    var timer: Timer!
  
    
    
    override func viewDidLoad() {
        startTime()
        super.viewDidLoad()
        
        

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTime() {
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showRandomImg), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImg() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
        
    }
    

   
    
    @IBAction func stotBtnTapped(_ sender: UIButton) {
        timer.invalidate()
       
    }
    
    
    @IBAction func restartBtnTapped(_ sender: UIButton) {
        timer.invalidate()
        startTime()
        
    }
    
    @IBAction func rulesBtnTapped(_ sender: UIButton) {
        
    }
    
    
   
 }

