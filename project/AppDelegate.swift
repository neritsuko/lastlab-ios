import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let tabBarController = UITabBarController()

        let mainVC = ViewController()
        let mainNavigationController = UINavigationController(rootViewController: mainVC)
        mainNavigationController.tabBarItem = UITabBarItem(title: "Main", image: nil, selectedImage: nil)

        let profileVC = ProfileViewController()
        let profileNavigationController = UINavigationController(rootViewController: profileVC)
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: nil, selectedImage: nil)

        tabBarController.viewControllers = [mainNavigationController, profileNavigationController]

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }
}
