//
//  ViewController.swift
//  NSAlertDemo
//
//  Created by sycf_ios on 2016/12/12.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController ,NSAlertDelegate{
    var alert = NSAlert()
    var imageView = NSImageView(image: NSImage.init(named: "panda")!)
    override func viewDidLoad() {
        super.viewDidLoad()
        //信息标题
        alert.messageText = "提醒"
        //信息内容
        alert.informativeText = "informationText"
        //图片，不设置将会是系统默认图片
        alert.icon = NSImage.init(named: "QQ")
        //显示帮助按钮
        alert.helpAnchor = "NSAlert"
        alert.showsHelp = true
        //显示
        alert.showsSuppressionButton = true
        //显示配图
        imageView.frame = NSRect(x: 0, y: 0, width: 100, height: 100)
        alert.accessoryView = imageView;
        alert.layout()
        //样式
        alert.alertStyle = .warning
        //代理
        alert.delegate = self
        //添加button
        alert.addButton(withTitle: "取消")
        alert.addButton(withTitle: "确定")
        
    }
    
    @IBAction func show(_ sender: Any) {
        alert.beginSheetModal(for: view.window!, completionHandler: {response -> Void in print(response)})
    }
    //MARK:NSAlertDelegate 代理方法，在点击Help按键时调用
    func alertShowHelp(_ alert: NSAlert) -> Bool {
        print("NSAlert")
        NSHelpManager.shared().openHelpAnchor("NSAlert", inBook: "")
        return true
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

