//
//  SingleViewController.swift
//  MisRecetas
//
//  Created by José Manuel Muñoz Manzano on 11/8/17.
//  Copyright © 2017 José Manuel Muñoz Manzano. All rights reserved.
//

import UIKit

class SingleViewController: UIViewController {

    var recipes : [Recipe] = []
    
    // Ponemos la variable tableView porque en func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell se hace uso de tableView para desencolar la celda (dequeueReusableCell)
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Añadimos por código el delegado de la tabla para que lo gobierne el ViewController
        // Igual para el dataSource
        /*self.tableView.dataSource = self
        self.tableView.delegate = self*/
        
        // Se ha hecho gráficamente: desde la tableView pulsamos Control y lo llevamos al circulito amarillo de arriba y seleccionamos primero el datasource y luego el delegate
        
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Quitar barra de estado
    override var prefersStatusBarHidden: Bool {
        return true
    }

    
}



extension SingleViewController : UITableViewDataSource {
    // Número de secciones que tiene que tener la tabla. Con una sección nos basta
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Número de filas en sección. Las filas depende del número de recetas que quiero mostrar
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    // Se llama para todas y cada una de las celdas que deben ser mostradas en pantalla
    // Sirve para configurar las celdas en cuestión
    // indexPath sería como el identificador de la fila/columna (que se suelen llamar sección y fila donde están ubicadas las celdas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // indexPath.section siempre será 1 porque hemos dicho que sólo hay una sección
        
        // indexPath.row devuelve la fila en la que me encuentro
        let recipe = recipes[indexPath.row]
        
        // RecipeCell es el identificador de la celda (ver Main.Storyboard)
        // Va a servir para identificar unívocamente las celdas de la vista
        let cellID = "FullRecipeCell"
        
        // Recuperar la que está en el index Path que estamos configurando
        // Si tuviéramos que mostrar 1000 filas, no se puede hacer del tirón
        // Hay que hacer una carga parcial. En pantalla caben 13. Al arrastrar arriba saldría la celda 14
        // pero a la vez desaparece la de arriba, es decir, a nivel de memoria la primera es destruida
        // y la 14 pasa a ser reutilizada por la primera. Solo hay 14 celdas creadas.
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! FullRecipeCell
        
        // Asignamos el nombre de la receta al texto de la celda. Igual para la imagen
        cell.nameCell.text = recipe.name
        cell.imageCell.image = recipe.image
        
        // Devolvemos la celda configurada
        return cell
    }
}
