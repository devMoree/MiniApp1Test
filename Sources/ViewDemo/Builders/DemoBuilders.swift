//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//

import Foundation
import SwiftUI

public class DemoBuilders {
    @available(iOS 13.0.0, *)
    public static func createModule(text: String, image: String, model: TargetingClass) -> some View {
        return DemoContentView(text: text, image: image, models: model)
  }
}

@available(iOS 13.0, *)
public struct DetailView: View {
    var title: String?
    var image: String?
    var background: Color?
    var model: TargetingClass
    
    public init(text: String,
                image: String,
                background: Color,
                model: TargetingClass) {
        self.title = text
        self.image = image
        self.background = background
        self.model = model
    }
    public var body: some View {
        ZStack {
            if #available(iOS 14.0, *) {
                background.ignoresSafeArea()
            }
            DemoBuilders.createModule(text: title ?? "", 
                                      image: image ?? "", 
                                      model: model ?? TargetingClass(age: "", entry: ""))
        }
    }
}
