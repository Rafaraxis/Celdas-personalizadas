//
//  Celda alumno.swift
//  Celdas personalizadas
//
//  Created by Alumno on 18/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class CeldaAlumno : UITableViewCell, UITableViewDataSource, UITableViewDelegate {
    
    let alumnos = ["Benjamin","Pablo","Sofia","Rafa","Fernanda"]
    let promedios = [9.9, 9.8, 9.7, 9.6, 9.5]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaAlumno = tableView.dequeueReusableCell(withIdentifier: "cellAlumno") as? CeldaAlumno
        
        celdaAlumno?.lblAlumno.text = alumnos[indexPath.row]
        celdaAlumno?.lblPromdio.text = "\(promedios[indexPath.row])"
        
        return celdaAlumno!
    }
    
    
    @IBOutlet weak var lblPromdio: UILabel!
    @IBOutlet weak var lblAlumno: UILabel!
}

