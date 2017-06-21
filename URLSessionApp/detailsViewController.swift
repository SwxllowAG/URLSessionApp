//
//  detailsViewController.swift
//  URLSessionApp
//
//  Created by Galym Anuarbek on 6/20/17.
//  Copyright © 2017 galymco. All rights reserved.
//

import UIKit

var indexx = 0

class detailsViewController: UIViewController {
    
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var authorsLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    var authorss = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        bigImage.image = results[indexx].thumbnail
        if let imageUrl = results[indexx].thumbnail,
            let url = URL(string: imageUrl){
            bigImage.setImage(from: url)
        }
        if results[indexx].authors != nil {
            for i in 0...results[indexx].authors!.count-1{
                authorss = authorss + " \(results[indexx].authors![i])"
            }
        }else{
            authorss = "no author"
        }
        bookLabel.text = results[indexx].title
        authorsLabel.text = authorss
        yearLabel.text = results[indexx].publishedDate
        detailsLabel.text = results[indexx].description
    }
}
