//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 천성우 on 2022/11/20.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {// 페이지가스크롤에 보일 때 view의 내용이 로드가 되었을 때 하는 액션
        super.viewDidLoad()
        reload()
        button.tintColor = UIColor.systemPink
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload(){
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
}
