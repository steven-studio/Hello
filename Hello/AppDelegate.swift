//
//  AppDelegate.swift
//  Hello
//
//  Created by 游哲維 on 2025/4/3.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // SceneDelegate 會管理視窗，因此這邊不需要定義 window 屬性
    override init() {
        super.init()
        print("AppDelegate initialized") // 確認是否執行
    }

    // 當建立新 scene 時，系統會呼叫這個方法
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // 打印場景會話資訊
        print("🎬 即將創建場景，角色類型: \(connectingSceneSession.role.rawValue)")
        
        // 檢查 Info.plist 中的配置名稱是否正確
        let configName = "Default Configuration"
        let sceneConfig = UISceneConfiguration(name: configName, sessionRole: connectingSceneSession.role)
        
        // 檢查 SceneDelegate 類是否正確綁定
        print("🛠 場景配置名稱: \(configName)")
        print("🛠 場景代理類: \(String(describing: sceneConfig.delegateClass))")
        
        return sceneConfig
    }
}
