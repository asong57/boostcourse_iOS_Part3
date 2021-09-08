//
//  ViewController.swift
//  Alert
//
//  Created by asong on 2021/09/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func touchUpShowAlertButton(_ sender: UIButton){
        self.showAlertController(style: .alert)
    }
    
    @IBAction func touchUpShowActionSheetButton(_ snder: UIButton) {

       self.showAlertController(style: .actionSheet)

     }

    func showAlertController(style: UIAlertController.Style) {

      let alertController: UIAlertController

      alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: style)

      
      let okAction: UIAlertAction
      okAction = UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction) in
        print("OK pressed")
      })

      
      let cancelAction: UIAlertAction
      cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

      alertController.addAction(okAction)
      alertController.addAction(cancelAction)

        alertController.addTextField{(field: UITextField) in
            field.placeholder = "플레이스홀더"
            field.textColor = UIColor.red
        }
        
      self.present(alertController, animated: true, completion: {
        print("Alert controller shown")
      })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

