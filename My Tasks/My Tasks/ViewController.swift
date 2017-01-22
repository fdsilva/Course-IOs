//
//  ViewController.swift
//  My Tasks
//
//  Created by Francisco Ioneiton da Silva on 20/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit
let TRAVEL_NOTE = "travelNote"

class ViewController: UIViewController {

    @IBOutlet weak var textDescriptionNote:
    UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let retrivedText = self.retriveTravelNote()
        textDescriptionNote.text = retrivedText
    }
    
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hideKeyboard(){
         view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       hideKeyboard()
    }


    @IBAction func saveNote(_ sender: Any) {
        if let insertedText = textDescriptionNote.text {
            self.saveNote(text: insertedText)
            hideKeyboard()
            
        }
    }
    
    func saveNote(text: String){
        UserDefaults.standard.set(text, forKey: TRAVEL_NOTE)
    }
    
    func retriveTravelNote() -> String{
        let retrivedNote = UserDefaults.standard.object(forKey: TRAVEL_NOTE)
        
        if retrivedNote != nil {
            return retrivedNote as! String
        
        }else{
            return ""
        
        }
    }

}

