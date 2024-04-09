//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
class DemoObj: ObservableObject {
    @Published var text: String = ""
    @Published var image: String = ""
    @Published var status: Bool = false
    @Published var models: TargetingClass?

    public func updateText(text: String) {
        self.text = text
    }
    
    public func updateImage(image: String) {
        self.image = image
    }
    
    public func updateStatus(status: Bool) {
        self.status = status
    }
    
    public func updateModels(models: TargetingClass) {
        self.models = models
    }
}


public struct TargetingClass: Codable {
    let age: String?
    let entry: String?

    enum CodingKeys: String, CodingKey {
        case age, entry
    }
}
