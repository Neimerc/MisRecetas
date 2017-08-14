//
//  ViewController.swift
//  MisRecetas
//
//  Created by José Manuel Muñoz Manzano on 11/8/17.
//  Copyright © 2017 José Manuel Muñoz Manzano. All rights reserved.
//

import UIKit

class ViewController: UITableViewController { /*UIViewController, UITableViewDataSource, UITableViewDelegate*/

    var recipes : [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar el Navigation Item de la vuelta atrás al ViewController principal
        // Así desaparece el texto de Mis Recetas, dejando sólo la flecha de vuelta atrás (es un botón)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        var recipe = Recipe(name: "Tortilla de patatas",
                            image: #imageLiteral(resourceName: "tortilla"),
                            time: 20,
                            ingredients: ["Patatas", "Huevos", "Cebolla"],
                            steps: ["Pelar las patatas y la cebolla",
                                    "Cortar las patatas y la cebolla y sofreir",
                                    "Batir los huevos y echarlos durante un minuto a la sartén con el resto"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Pizza margarita",
                        image: #imageLiteral(resourceName: "pizza"),
                        time: 60,
                        ingredients: ["Harina", "Levadura", "Aceite", "Sal", "Salsa de Tomate", "Queso"],
                        steps: ["Hacemos la masa con harina, levadura, aceite y sal",
                                "Dejamos reposar la masa 30 minutos",
                                "Extendemos la masa encima de una bandeja y añadimos el resto de ingredientes",
                                "Hornear durante 12 minutos"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Hamburguesa con queso",
                        image: #imageLiteral(resourceName: "hamburguesa"),
                        time: 10,
                        ingredients: ["Pan de hamburguesa", "Lechuga", "Tomate", "Queso", "Carne de hamburguesa"],
                        steps: ["Poner al fuego la carne al gusto",
                                "Montar la hamburguesa con sus ingredientes entre los panes"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Ensalada César",
                        image: #imageLiteral(resourceName: "ensalada"),
                        time: 15,
                        ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimientos", "Salsa César", "Pollo"],
                        steps: ["Limpiar todas las verduras y trocearlas",
                                "Cocer el pollo al gusto",
                                "Juntar todos los ingredientes en una ensaladera",
                                "Servir con salsa César por encima"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Lasagna bolognesa",
                        image: #imageLiteral(resourceName: "lasagna"),
                        time: 120,
                        ingredients: ["Harina", "Aceite", "Huevo", "Sal", "Salsa de tomate", "Carne picada"],
                        steps: ["Hacemos la masa con harina, aceite, huevo y sal",
                                "Dejamos reposar la masa 30 minutos y la cortamos en láminas",
                                "Entremezclar láminas con salsa de tomate y carne picada",
                                "Poner al horno 45 minutos"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Salmón con ensalada",
                        image: #imageLiteral(resourceName: "salmon"),
                        time: 25,
                        ingredients: ["Salmón", "Aceite", "Sal", "Lechuga", "Tomate"],
                        steps: ["Preparar la ensalada con lechuga y tomate",
                        "Hacer a la plancha el salmón al gusto",
                        "Una vez retirado el salmón echar el acéite y la sal a la ensalada"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Crepe",
                        image: #imageLiteral(resourceName: "crepe"),
                        time: 50,
                        ingredients: ["Harina", "Huevos", "Azúcar", "Sal", "Vainilla"],
                        steps: ["Batir los huevos", "Vertir la harina, el azúcar, la sal y la vainilla",
                                "Remover con las manos hasta formar una masa compacta y dejar un rato",
                                "Hacer láminas de la masa y freirlas"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Bagel con jamón y huevo",
                        image: #imageLiteral(resourceName: "bagel"),
                        time: 100,
                        ingredients: ["Harina", "Levadura", "Huevos", "Sal", "Jamón"],
                        steps: ["Hacer la masa con harina, huevos, sal y levadura",
                                "Dejar reposar 20 minutos",
                                "Hacer la forma de bagel",
                                "Hornear 20 minutos",
                                "Cocer un huevo",
                                "Echar el huevo cocido en rodajas y el jamón dentro del bagel"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Tarta selva negra",
                        image: #imageLiteral(resourceName: "selvaNegra"),
                        time: 120,
                        ingredients: ["Harina", "Acéite", "Levadura", "Azúcar", "Huevos", "Chocolate", "Sirope de fresa"],
                        steps: ["Batir los huevos y hacer la masa con harina, aceite, levadura, azúcar y chocolate",
                                "Hornear durante 40 minutos",
                                "Inyectar sirope de fresa"])
        recipes.append(recipe)
    
        recipe = Recipe(name: "Jamón con melón",
                        image: #imageLiteral(resourceName: "melonConJamon"),
                        time: 10,
                        ingredients: ["Melón", "Jamón"],
                        steps: ["Cortar el melón en rodajas quitando la corteza",
                                "Echar lonchas de jamón al lado"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Ensalada picante",
                        image: #imageLiteral(resourceName: "ensaladaPicante"),
                        time: 15,
                        ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimientos picantes"],
                        steps: ["Limpiar todas las verduras y trocearlas",
                                "Echar pimientos picantes al gusto",
                                "Juntar todos los ingredientes en una ensaladera"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Patatas Gourmet",
                        image: #imageLiteral(resourceName: "patata"),
                        time: 40,
                        ingredients: ["Patatas", "Aceite", "Huevos", "Sal", "Ajos"],
                        steps: ["Liar la patata en papel de aluminio", "Hornear 30 minutos",
                                "Preparar el Ali-oli batiendo los huevos con el aceite y los ajos",
                                "Quitar el papel de aluminio, abrirlas por la mitad y echar el ali-oli"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Pollo a la parrilla",
                        image: #imageLiteral(resourceName: "pollo"),
                        time: 30,
                        ingredients: ["Pollo", "Hierbas provenzales", "Pimientos"],
                        steps: ["Macerar el pollo con hierbas provenzales durante 20 minutos",
                                "Echar a la parrila el pollo y los pimientos y hacer al gusto"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Lampredotto",
                        image: #imageLiteral(resourceName: "lampredotto"),
                        time: 40,
                        ingredients: ["Carne de vacuno", "Pan", "Lechuga", "Tomate"],
                        steps: ["Asar la carne al gusto",
                                "Echar en el pan la carne, la lechuga y el tomate"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Cangrejo de río",
                        image: #imageLiteral(resourceName: "cangrejoRio"),
                        time: 10,
                        ingredients: ["Cangrejo de río"],
                        steps: ["Cocer los cangrejos de rio 10 minutos y emplatar"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Guiso de tomate y maiz",
                        image: #imageLiteral(resourceName: "guisoMaizTomate"),
                        time: 50,
                        ingredients: ["Patata", "Tomate seco", "maiz"],
                        steps: ["Llenar una olla con patatas, el tomate seco y el maiz y echar agua",
                                "Cocer durante 40 mintutos y emplatar"])
        recipes.append(recipe)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Ocultar barra de navegación al hacer un swipe o un scroll en toda la app
        // Esto se hace en el storyboard, en el Navigation Controller (donde está la flecha de comienzo de la app), Attributes Inspector, y en Hide Bars hacer check en On Swipe
        // Para un controller concreto (en este) hay que hacerlo por código y además en los demás controller indicar que no se va a hacer el Hide Bars On Swipe
        navigationController?.hidesBarsOnSwipe = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Quitar barra de estado
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // MARK: - UITableViewDataSource
    // Aquí pertenecen las funciones que gestionan la información
    
    // Número de secciones que tiene que tener la tabla. Con una sección nos basta
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Número de filas en sección. Las filas depende del número de recetas que quiero mostrar
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    // Se llama para todas y cada una de las celdas que deben ser mostradas en pantalla
    // Sirve para configurar las celdas en cuestión
    // indexPath sería como el identificador de la fila/columna (que se suelen llamar sección y fila donde están ubicadas las celdas
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // indexPath.section siempre será 1 porque hemos dicho que sólo hay una sección
        
        // indexPath.row devuelve la fila en la que me encuentro
        let recipe = recipes[indexPath.row]
        
        // RecipeCell es el identificador de la celda (ver Main.Storyboard)
        // Va a servir para identificar unívocamente las celdas de la vista
        let cellID = "RecipeCell"
        
        // Recuperar la que está en el index Path que estamos configurando
        // Si tuviéramos que mostrar 1000 filas, no se puede hacer del tirón
        // Hay que hacer una carga parcial. En pantalla caben 13. Al arrastrar arriba saldría la celda 14
        // pero a la vez desaparece la de arriba, es decir, a nivel de memoria la primera es destruida
        // y la 14 pasa a ser reutilizada por la primera. Solo hay 14 celdas creadas.
        
        // Con as! RecipeCell decimos que la recuperamos como una celda de tipo RecipeCell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! RecipeCell
        
        // Asignamos valores al contenido de la celda
        cell.thumbnailImageView.image = recipe.image
        cell.nameLabel.text = recipe.name
        cell.timeLabel.text = "\(recipe.time!) min"
        cell.ingredientsLabel.text = "Ingredientes: \(recipe.ingredients.count)"
        
        
        // "Tunear" la imagen usando la clase CALayer
        // Ponemos el radio a la mitad de la anchura de la imagen (84.0 -> 42.0)
        // clipsToBounds significa recortar hasta los bordes
        // Lo que se ha hecho ha sido crear una capa circular con radio 42 y elimino todo lo que salga fuera de ella
        // Se comentan porque se hacen en el Main.storyboard
        // Seleccionar la imagen e ir al identity inspector, donde aparece User Defined Runtime Attributes. Pulsamoa en el + y cambiamos el keyPath por layer.cornerRadius, cambiamo el type a Number y el valor a 42
        // Para el clipsToBounds ir a Attributes Inspector y pulsar el check de Clip Subviews
        /*cell.thumbnailImageView.layer.cornerRadius = 42.0
        cell.thumbnailImageView.clipsToBounds = true*/
        
        // Devolvemos la celda configurada
        return cell
    }
    
    
    // Editar celdas (borrad)
    // Con un slide borraremos la celda
    // Pasos
    // 1.- Habilitar la opción de borrar: esto se hace sencillamente generando el override
    // 2.- El usuario puede tocar el botón de borrar que saldrá en el lateral
    // 3.- Borrar la información del array de recetas
    // 4.- Refrescar la pantalla
    // De la vista al controlador, del controlador al modelo, del modelo al controlador y del controlador a la vista
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        // Queremos borrar
        if editingStyle == .delete {
            // El modelo de datos tiene que borrar la receta
            self.recipes.remove(at: indexPath.row)
        }
        
        // Recargamos la información independientemente de si se borra o no
        // Esto no es muy eficiente si hay que cargar de nuevo 1000 celdas
        //self.tableView.reloadData()
        // Para hacerlo mejor, borrar sólo esa celda de la vista
        self.tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    // Para tipos de ediciones
    // CUIDADO: Se elimina la opción de borrar. Hay que añadir la segunda opción de borrar
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        // Se va a añadir la acción de compartir
        let shareAction = UITableViewRowAction(style: .default, title: "Compartir") { (action, indexPath) in
            
            // El texto a compartir
            let shareDefaultText = "Estoy mirando la receta de \(self.recipes[indexPath.row].name!) en la App del curso de IOS 10 con Juan Gabriel"
            
            // El controlador. Muestra diferentes servicios
            // Se pueden compartir muchas cosas, como imágenes...
            let activityController = UIActivityViewController(activityItems: [shareDefaultText, self.recipes[indexPath.row].image!], applicationActivities: nil)
            // Presentar el activity Controller
            self.present(activityController, animated: true, completion: nil)
        }
        shareAction.backgroundColor = UIColor(red: 30.0/255.0, green: 164.0/255.0, blue: 253.0/255.0, alpha: 1.0)
        
        // Como se ha borrado la acción de borrado hay que añadirla de nuevo
        let deleteAction = UITableViewRowAction(style: .default, title: "Borrar") { (action, indexPath) in
            // El modelo de datos tiene que borrar la receta
            self.recipes.remove(at: indexPath.row)
            // Recargamos la información independientemente de si se borra o no
            // Esto no es muy eficiente si hay que cargar de nuevo 1000 celdas
            //self.tableView.reloadData()
            // Para hacerlo mejor, borrar sólo esa celda de la vista
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteAction.backgroundColor = UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 202.0/255.0, alpha: 1.0)
        
        return [shareAction, deleteAction]
    }
    
    
    //MARK: - UITableViewDelegate
    
    // Selección de celda para hacerla o no favorita
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        /* SE COMENTA PARA QUE CUANDO SE PULSE CLICK PASE AL SEGUNDO VIEW CONTROLLER
        let recipe = self.recipes[indexPath.row]
        
        let alertController = UIAlertController(title: recipe.name, message: "Valora este plato", preferredStyle: .alert)
        
        // El botón Cancelar siempre a la izquierda por temas de diseño. La gente suele ser diestra y así encuentra más rápido el otro botón. Así facilitamos la vida al usuario
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        var favouriteActionTitle = "Favorito"
        var favouriteActionStyle = UIAlertActionStyle.default
        if recipe.isFavourite {
            favouriteActionTitle = "No Favorito"
            favouriteActionStyle = UIAlertActionStyle.destructive
        }
        
        let favouriteAction = UIAlertAction(title: favouriteActionTitle, style: favouriteActionStyle) { (action) in
            // Esto es un closure: bloque de completación para llevar a cabo un conjunto de acciones
            // que se ejecutan al pulsar el botón Favorito
            let recipe = self.recipes[indexPath.row]
            // Esto es como poner un if y un else. Se niega el estado en el que se encontraba la variable
            recipe.isFavourite = !recipe.isFavourite
            // Después de haber cambiado la receta que se refresque toda la tableView
            // para que aparezca o desaparezca el checkmark
            self.tableView.reloadData()
        }
        alertController.addAction(favouriteAction)
        self.present(alertController, animated: true, completion: nil)*/
    }
    
    
    // Para pasar información a otro ViewController a través del SEGUE hay que sobreescribir la siguiente función
    // Notar que en el Main.Storyboard hemos dado un identifier a ese SEGUE (showRecipeDetail)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeDetail" {
            // Saber el elemento que se ha recepcionado
            if let indexPath = self.tableView.indexPathForSelectedRow {
                // Con ese elemento sacar la receta del array de recetas
                let selectedRecipe = self.recipes[indexPath.row]
                // Saber cual es el ViewController al que le tengo que envíar la información (Casting seguro a DetailViewController)
                let destinationViewController = segue.destination as! DetailViewController
                // Enviársela al nuevo ViewController
                destinationViewController.recipe = selectedRecipe
            }
        }
    }
    
}

