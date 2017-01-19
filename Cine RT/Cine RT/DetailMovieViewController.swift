//
//  DetailMovieViewController.swift
//  Cine RT
//
//  Created by Francisco Ioneiton da Silva on 18/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import Foundation
import UIKit

class DetailMovieViewController: UIViewController{
    
    @IBOutlet weak var descriptionDetailLabel: UILabel!
    @IBOutlet weak var titleDetailLabel: UILabel!
    @IBOutlet weak var imgDetail: UIImageView!
    var movie: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgDetail.image = movie.image
        titleDetailLabel.text = movie.title
        descriptionDetailLabel.text = movie.description
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }

    
}
