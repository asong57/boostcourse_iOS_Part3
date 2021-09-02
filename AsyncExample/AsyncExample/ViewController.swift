//
//  ViewController.swift
//  AsyncExample
//
//  Created by asong on 2021/09/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func touchUpDownloadButton(_ sender: UIButton){
        //이미지 다운로드, 이미지 뷰에 셋팅
        
        guard let imageURL: URL = URL(string: "https://6.viki.io/image/36ddd8efd16942d3a6da09eac4067638.jpeg?s=900x600&e=t")
        else {return}
        
        
        OperationQueue().addOperation {
            do {
                let imageData: Data = try Data.init(contentsOf: imageURL)
                guard let image: UIImage = UIImage(data: imageData)
                else {return}
                OperationQueue.main.addOperation {
                    self.imageView.image = image
                }
            }
            catch {
                return
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

