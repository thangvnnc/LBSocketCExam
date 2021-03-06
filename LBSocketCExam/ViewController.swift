//
//  ViewController.swift
//  LBSocketCExam
//
//  Created by CPU-M03 on 1/10/18.
//  Copyright © 2018 CPU-M03. All rights reserved.
//
import Foundation
import UIKit
import LBSocketC

class ViewController: UIViewController
{
    var sockfd: Int32 = 0
    
    @IBAction func btnStartServer(_ sender: UIButton)
    {
        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async
        {
            let port: Int32 = 8000;
            var resultStart: Int32 = 0;
            resultStart = start_server(port, &self.sockfd)
            print(resultStart)
//            runServerDemo()
        }
    }
    
    @IBAction func btnRunClient(_ sender: UIButton)
    {
        print(sockfd)
        socket_close(sockfd)
//        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async
//        {
//            runClientDemo()
//        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        var port: Int32 = 0
//        let rs: Int32 = socket_get_port_available(&port)
//        print(rs)
    }
}
