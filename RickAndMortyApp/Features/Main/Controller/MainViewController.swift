//
//  MainViewController.swift
//  RickAndMortyApp
//
//  Created by Martin Bove on 25/10/22.
//

import Foundation
import MBProgressHUD
import UIKit

class MainViewController: UIViewController{

    @IBOutlet weak var filterStatus: UIPickerView!
    @IBOutlet weak var tableView: UITableView!
    
    private var spinner: MBProgressHUD = MBProgressHUD()
    
    let pickerData: [String] = [Status.alive.rawValue,Status.dead.rawValue,Status.unknown.rawValue]
    
    var viewModel = MainViewModel()
    
    
    override func viewDidAppear(_ animated: Bool) {
       // spinner = MBProgressHUD.showAdded(to: self.view, animated: true)

    }
    
    
    
    
     override func viewDidLoad() {
         super.viewDidLoad()
        print("^^^...view...\(pickerData)")
       configureUI()
      
         DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
             self.viewModel.loadCharactersForPage(page: 1) { data in
                self.spinner.hide(animated: true)
                print("^^^..data...\(data)")
            }
         }
         
       
    }
    
    func configureUI(){
        spinner = MBProgressHUD.showAdded(to: self.view, animated: true)
      //  filterStatus.delegate = self
        //filterStatus.dataSource = self
      //  self.tableView.delegate = self
      //  self.tableView.dataSource = self
        
    }
    
}

extension MainViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("^^^..pickerData...\(pickerData[row])")
        return self.pickerData[row]
       }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
