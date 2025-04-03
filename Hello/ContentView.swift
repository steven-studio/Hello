//
//  ContentView.swift
//  Hello
//
//  Created by 游哲維 on 2025/4/3.
//

import SwiftUI
import UIKit

class ContentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        view.backgroundColor = .white // 直接設定成白色

        // 建立 UIImageView，使用系統圖示 "globe"
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "globe")
        imageView.contentMode = .scaleAspectFit
        // 使用系統 tintColor 作為前景色（對應 .foregroundStyle(.tint)）
        imageView.tintColor = view.tintColor
        
        // 建立 UILabel，顯示 "Hello, world!"
        let label = UILabel()
        label.text = "Hello, world!"
        label.textAlignment = .center
        
        // 建立 UIStackView（垂直排列）
        let stackView = UIStackView(arrangedSubviews: [imageView, label])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 8
        
        // 啟用 Auto Layout
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        // 設定 padding，將 stackView 約束在 view 的 safeArea 內
        let padding: CGFloat = 16
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}
