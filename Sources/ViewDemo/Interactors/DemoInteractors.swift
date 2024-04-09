//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//


import SwiftUI

@available(iOS 13.0, *)
class DemoInteractors: DemoProtocols {
    var presenter: DemoInteractorDelegateProtocol?
    var model: DemoObj
    var text: String
    var image: String
    var models: TargetingClass
    
    init (model: DemoObj,
          text: String,
          image: String,
          models: TargetingClass) {
        self.text = text
        self.model = model
        self.image = image
        self.models = models
    }
    
    func getUpDetail() {
        self.model.updateText(text: text)
        self.model.updateImage(image: image)
        self.model.updateModels(models: models)
    }
    
    func checkStatus(text: String) {
        print("gun demo count \(text)")
//        self.model.updateText(text: "gikvjjr")
        if text.count == 5 {
            self.model.updateStatus(status: true)
        } else {
            self.model.updateStatus(status: false)
        }
    }
}
