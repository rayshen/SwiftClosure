//
//  ProcessData.swift

import UIKit

protocol callBackDelegate {
    func callbackDelegatefuc(backMsg:String)
}

class ProcessData: NSObject{
    //定义block
    typealias fucBlock = (backMsg :String) ->()
    var blockproerty:fucBlock!

    
    var delegate:callBackDelegate?
    func processMethod(cmdStr:String?){
        if((delegate) != nil){
            delegate?.callbackDelegatefuc("backMsg---by delegate")
        }
        
        if let _ = blockproerty{
            blockproerty(backMsg: "backMsg---by block property")
        }
    }
    
    func processWithBlock(cmdStr:String?,blockProperty:fucBlock){
        blockProperty(backMsg :"backMsg---by block inside func")
    }
}
