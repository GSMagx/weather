//
//  MyCitiesController.swift
//  seque_test
//
//  Created by Alex on 11.01.19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

    var cities = [String]()

class MyCitiesController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCitiesCell", for: indexPath) as! MyCitiesCell
        
        let myCities = cities[indexPath.row]
        cell.myNamesCities?.text = myCities

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Если была нажата кнопка «Удалить»
        if editingStyle == .delete {
            // Удаляем город из массива
            cities.remove(at: indexPath.row)
            // И удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
           
        }

        }
    
    
    
    @IBAction func addCity(segue: UIStoryboardSegue) {
        
        // Проверяем идентификатор перехода, чтобы убедиться, что это нужный
        if segue.identifier == "addCity" {
            // Получаем ссылку на контроллер, с которого осуществлен переход
            let allCitiesController = segue.source as! AllCitiesController
            
            // Получаем индекс выделенной ячейки
            if let indexPath = allCitiesController.tableView.indexPathForSelectedRow {
                // Получаем город по индексу
                let city = allCitiesController.cities[indexPath.row]
                
                // Проверяем, что такого города нет в списке
                if !cities.contains(city) {
                    // Добавляем город в список выбранных
                    cities.append(city)
                    // Обновляем таблицу
                    tableView.reloadData()
                } 
                }
            }
        }
    }




