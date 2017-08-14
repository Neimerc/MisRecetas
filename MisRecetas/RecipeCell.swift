//
//  RecipeCell.swift
//  MisRecetas
//
//  Created by José Manuel Muñoz Manzano on 12/8/17.
//  Copyright © 2017 José Manuel Muñoz Manzano. All rights reserved.
//

import UIKit

// Esta clase gobierna nuestra clase personalizada
// En Main.storyboard, a RecipeCell, en el Identity inspector se ha puesto en Name (RecipeCell.swift) después de crear esta clase vacía y luego se han añadido los elementos (variables) a ella
class RecipeCell: UITableViewCell {

    @IBOutlet var thumbnailImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var ingredientsLabel: UILabel!
    
}
