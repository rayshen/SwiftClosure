//
//  ViewController.swift

import UIKit

class ViewController: UIViewController,callBackDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let process=ProcessData()
        process.delegate=self
        
        //block回调
        process.blockproerty={ (backMsg) in
            print(backMsg)
        }
        
        //执行函数
        process.processMethod("aaa")
        
        //函数内回调
        process.processWithBlock("bbb") { (backMsg) in
            print(backMsg)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //delegate回调
    func callbackDelegatefuc(backMsg:String){
        print(backMsg)
    }

}




