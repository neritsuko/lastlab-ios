import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupTabBarController()
        return true
    }
    
    func setupTabBarController() {
        let tabBarController = UITabBarController()
        
        let mainVC = ViewController()
        let profileVC = ProfileViewController()
        let navController1 = UINavigationController(rootViewController: mainVC)
        let navController2 = UINavigationController(rootViewController: profileVC)
        
        tabBarController.viewControllers = [navController1, navController2]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}
