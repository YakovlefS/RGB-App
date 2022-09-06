//
//  MainViewController.swift
//  RGB App
//
//  Created by YakovlefS on 06.09.2022.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor( color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ViewController
        colorVC.delegate = self
        colorVC.viewColor = view.backgroundColor
    }
}

extension MainViewController: ColorViewControllerDelegate {
    func setColor( color: UIColor) {
        view.backgroundColor = color
    }
}

