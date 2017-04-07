//
//  VCPrincipal.swift
//  Actividad1
//
//  Created by Sergio Arranz on 4/4/17.
//  Copyright © 2017 Sergio Arranz. All rights reserved.
//

import UIKit

class VCPrincipal: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblMitabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "micelda1") as! TVCMiCelda
        if(indexPath.row==0){
            cell.lblNombre?.text="Coche 1"
        } else if (indexPath.row==1) {
            cell.lblNombre?.text="Coche 2"
        } else if (indexPath.row==2) {
            cell.lblNombre?.text="Coche 3"
        } else if (indexPath.row==3) {
            cell.lblNombre?.text="Coche 4"
        } else if (indexPath.row==4) {
            cell.lblNombre?.text="Coche 5"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("HE SELECCIONADO LA POSICIÓN:", indexPath.row);
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("HE DESELECCIONADO LA POSICIÓN:", indexPath.row);

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
