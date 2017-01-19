//
//  ViewController.swift
//  Cine RT
//
//  Created by Francisco Ioneiton da Silva on 18/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var movies: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadMovies()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath) as! CellMovie
        
        cell.movieImage.image = movie.image
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        
        //cell.movieImage.layer.cornerRadius = 42
        //cell.movieImage.clipsToBounds = true
        
//        cell.textLabel?.text = movie.title
//        cell.imageView?.image = movie.image
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "sendMovieDetails"){
            //retreve a list row
            if let indexPath = tableView.indexPathForSelectedRow{
                let movie = self.movies[indexPath.row]
                
                let destinationViewController = segue.destination as! DetailMovieViewController
                
                destinationViewController.movie = movie
            }
        }
    }
    
    func loadMovies() {
        
        var filme: Filme
        
        filme = Filme(title: "007 -Spectre", description: "É bala até umas hora", imagem: #imageLiteral(resourceName: "filme1"))
        movies.append(filme)
        
        filme = Filme(title: "Star Wars", description: "Whooom Whooom Whooom", imagem: #imageLiteral(resourceName: "filme2") )
        movies.append(filme)
        
        filme = Filme(title: "Impacto Mortal", description: "Oia a Peda", imagem: #imageLiteral(resourceName: "filme3"))
        movies.append(filme)
        
        filme = Filme(title: "Deadpool", description: "Piscina morta", imagem:  #imageLiteral(resourceName: "filme4"))
        movies.append(filme)
        
        filme = Filme(title: "O Regresso", description: "Urso", imagem: #imageLiteral(resourceName: "filme5"))
        movies.append(filme)
        
        filme = Filme(title: "Herdeira", description: "Whooom Whooom Whooom", imagem: #imageLiteral(resourceName: "filme6") )
        movies.append(filme)
        
        filme = Filme(title: "Caçadores de Emoçao", description: "É bala até umas hora", imagem: #imageLiteral(resourceName: "filme7"))
        movies.append(filme)
        
        filme = Filme(title: "Regresso do mal", description: "Whooom Whooom Whooom", imagem: #imageLiteral(resourceName: "filme8"))
        movies.append(filme)
        
        filme = Filme(title: "Tarzan", description: "É bala até umas hora", imagem: #imageLiteral(resourceName: "filme9"))
        movies.append(filme)
        
        filme = Filme(title: "Hardcore", description: "Whooom Whooom Whooom", imagem: #imageLiteral(resourceName: "filme10"))
        movies.append(filme)
    }

}

