//
//  CALayerView.swift
//  SwiftZXing
//
//  Created by 吉野敦 on 2021/01/30.
//

import SwiftUI

struct CALayerView: UIViewControllerRepresentable {
    var caLayer:CALayer

    func makeUIViewController(context: UIViewControllerRepresentableContext<CALayerView>) -> UIViewController {
        let viewController = UIViewController()

        viewController.view.layer.addSublayer(caLayer)
        caLayer.frame = viewController.view.layer.frame

        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CALayerView>) {
        caLayer.frame = uiViewController.view.layer.frame
    }
}

