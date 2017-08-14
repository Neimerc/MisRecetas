//
//  ReviewViewController.swift
//  MisRecetas
//
//  Created by José Manuel Muñoz Manzano on 14/8/17.
//  Copyright © 2017 José Manuel Muñoz Manzano. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    // Vamos a animar (escalar) los botones de la stack view
    @IBOutlet var ratingStackView: UIStackView!
    // Como ahora se va a animar (escalar) por botón, necesitamos una variable por botón
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    
    // Para la pulsación de un botón de rating
    var ratingSelected : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Efecto difuminado a la imagen. En realidad es una vista que se añade encima de la imagen
        // UIBlurEffect crea una vista
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        // Defino que el efecto del difuminado sea igual de grande que la pantalla
        blurEffectView.frame = view.bounds
        // Añadimos subvista a la imagen
        backgroundImageView.addSubview(blurEffectView)
        
        // Escalado de la stack view
        // Se pone a tamaño 0
        //ratingStackView.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        
        // traslación. Cambia la posición de una vista
        // x positiva a la derecha. No se mueve en este caso
        // y positiva hacia abajo
        //ratingStackView.transform = CGAffineTransform(translationX: 0.0, y: 500.0)
        
        // NOTA: Para hacer varias animaciones hay que concatenarlas
        let scale = CGAffineTransform(scaleX: 0.0, y: 0.0)
        let translation = CGAffineTransform(translationX: 0.0, y: 500.0)
        
        //ratingStackView.transform = scale.concatenating(translation)    // Combina escalado con traslación
        self.firstButton.transform = scale.concatenating(translation)
        self.secondButton.transform = scale.concatenating(translation)
        self.thirdButton.transform = scale.concatenating(translation)
    }
    
    // Para el escalado/traslado de la stack view
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Se va a hacer una transformación afín. Empieza en 0.0 y acaba en el tamaño original
        /*UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
            self.ratingStackView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)*/
        
        // Spring animation : hace un rebote
        // Es lo mismo de arriba pero hecho de otra forma
        // usingSpringWithDamping : Coeficiente de amortiguación. A valor más pequeño mas rebota
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: { 
            self.firstButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: {(success) in
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
                self.secondButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: {(success) in
                UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
                    self.thirdButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                }, completion: nil)
            })
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Los tres botones se conectan a esta action
    // Pueden ejecutarla porque cada botón tiene un tag distinto
    @IBAction func ratingPress(_ sender: UIButton) {
        // ratingSelected tiene los nombre de los botones
        switch sender.tag {
        case 1:
            ratingSelected = "dislike"
        case 2:
            ratingSelected = "good"
        case 3:
            ratingSelected = "great"
        default:
            break
        }
        
        // Forzamos un Segue
        // Este nombre unwindToDetailView es nuestro y hay que ponerlo en el Identifier del Unwind Segue
        performSegue(withIdentifier: "unwindToDetailView", sender: sender)
    }
    
    
    
}
