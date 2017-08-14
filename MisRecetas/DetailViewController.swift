//
//  DetailViewController.swift
//  MisRecetas
//
//  Created by José Manuel Muñoz Manzano on 13/8/17.
//  Copyright © 2017 José Manuel Muñoz Manzano. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    /* NOTA: Aunque esta clase es para la tabla, en la imagen de arriba se ha hecho check en Clip to Bounds
            teniendo Aspect Fill, para evitar el problema de que al pulsar hacia atrás la imagen desaparezca "raro"
     
     Además, para los Label de la Stack View de la tabla, como el segundo lo queremos más grande, entre otras cosas
     le hemos dado más prioridad (dejar más pequeño el valor del Label2 en Content Hugging Priority del Size Inspector)
    */
    
    @IBOutlet var recipeImageView: UIImageView!
    // Para poder configurar opciones de la TableView tenemos que tenerla declarada como una IBOutlet
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var ratingButton: UIButton!
    
    
    var recipe : Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Añadimos título al botón de la vuelta atrás (Se quitó el título genérico en el viewDidLoad de ViewController.swift
        self.title = recipe.name
        
        self.recipeImageView.image = self.recipe.image
        
        // Fondo gris suave para la TableView. No lo hace porque la gestión de celdas se hace en el tableView cellForRowAt indexPath
        self.tableView.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 0.25)
        
        // Todo lo que venga después de la última celda desaparece
        // Se hace diciendo que lo que viene después de la última celda no tenga tamaño
        self.tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        // Cambiar separador por otro de otro color
        self.tableView.separatorColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 0.75)
        
        
        // Calcula el tamaño exacto de cada celda para que se ajuste a su contenido y lo renderice dinámicamente
        // Habrá celdas más grandes y más pequeñas
        // Tamaño estimado de la fila. Sería más o menos. 44.0 es el tamaño estándar
        self.tableView.estimatedRowHeight = 44.0
        // Tamaño de la altura de la fila. Aquí la celda va a ser de un tamaño correcto
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        // Para tamaño dinámico: Seleccionar una fuente de etiqueta de las que aparecen en Text Styles
        // Por si acaso quitar el Autoshrink y luego importantísimo, entrar en los ajustes de IOS, General, Accessibility y poner a On Larger Text, cambiando el tamaño de la letra
        // No es lo normal, pero lo suele usar gente con mala visión o cuando se quiere jugar con tamaños
        // de texto más grande para que se vean más correctamente
        
        // Para el icono rating
        self.ratingButton.setImage(UIImage(named: self.recipe.rating), for: .normal)
        
        
    }
    
    // Para no hacer el Hide Bars On Swipe en este Controller
    // Se llama a este método cada vez que se muestra la vista (no sólo cuando se carga la vista como viewDidLoad)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        // Si estaba oculto se muestra
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    // No mostrar la barra de estado
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    // Vinculamos el IBAction creada a mano (no arrastrando nada, sino escribiendolo) desde el storyboard
    // Se implementa en el de partida (porque volvemos hacia atrás) pero ahora en pantalla, en ReviewViewController (el destino) pulsar Ctrl con el ratón
    // pulsado en el botón pequeño de arriba a la derecha y llevarlo a exit (arriba el tercero) y 
    // escoger close with segue
    @IBAction func close(segue: UIStoryboardSegue) {
        //En ReviewViewController hemos puesto la etiqueta unwindToDetailView para el Segue
        if let reviewVC = segue.source as? ReviewViewController {
            if let rating = reviewVC.ratingSelected {
                self.recipe.rating = rating
                self.ratingButton.setImage(UIImage(named: self.recipe.rating), for: .normal)
            }
        }
    }
    
}

extension DetailViewController : UITableViewDataSource {
    
    // Tres secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    // 3 filas en la sección para nombre, tiempo, favorita
    // La cuenta de ingredientes
    // La cuenta de pasos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Lo que se devuelve por sección
        switch section {
            // Devuelve 2 celdas: Una para el nombre y otra para el tiempo
        case 0:
            return 2
            // Devuelve el número de ingredientes
        case 1:
            return self.recipe.ingredients.count
            // Devuelve el número de pasos
        case 2:
            return self.recipe.steps.count
            // Este caso no lo tendríamos contemplado y devolvemos 0
        default:
            return 0
        }
    
    }
    
    // Para configurar la celda
    // Recordar que DetailRecipeCell puesto aquí tendremos que ponerlo también en el Identifier del
    // TableViewCell en el storyboard
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailRecipeCell", for: indexPath) as! RecipeDetailViewCell
        
        // Limpiamos el color (clear es 0 alpha -> totalmente transparente) que pone por defecto esta función
        // Asi funciona el backgroundColor puesto en ViewDidLoad
        cell.backgroundColor = UIColor.clear
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.keyLabel.text = "Nombre:"
                cell.valueLabel.text  = self.recipe.name
                
            case 1:
                cell.keyLabel.text = "Tiempo:"
                cell.valueLabel.text = "\(self.recipe.time!) min"
                
            default:
                break
            }
        case 1:
            if indexPath.row == 0 {
                cell.keyLabel.text = "Ingredientes"
            } else {
                cell.keyLabel.text = ""
            }
            cell.valueLabel.text = self.recipe.ingredients[indexPath.row]
            
        case 2:
            if indexPath.row == 0 {
                cell.keyLabel.text = "Pasos"
            } else {
                cell.keyLabel.text = ""
            }
            cell.valueLabel.text = self.recipe.steps[indexPath.row]
            
        default:
            break
        }
        
        return cell
    }
    
    // Añadir título a las secciones
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        switch section {
        case 1:
            title = "Ingredientes"
        case 2:
            title = "Pasos"
        default:
            break
        }
        
        return title
    }
    
}

extension DetailViewController : UITableViewDelegate {
    
}
