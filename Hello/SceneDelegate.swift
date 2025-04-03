//
//  SceneDelegate.swift
//  Hello
//
//  Created by 游哲維 on 2025/4/3.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // 確保 scene 是 UIWindowScene 的實例
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // 建立一個新的 UIWindow，並與 windowScene 綁定
        let window = UIWindow(windowScene: windowScene)
        
        // 設定根視圖控制器為 ContentViewController
        window.rootViewController = ContentViewController()

        self.window = window
        
        // 顯示視窗
        window.makeKeyAndVisible()
    }
}
