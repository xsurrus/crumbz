import UIKit
import SpriteKit

class GameViewController: UIViewController {
  var scene: GameScene!
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
  override func shouldAutorotate() -> Bool {
    return true
  }
  
  override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
      return UIInterfaceOrientationMask.AllButUpsideDown
    } else {
      return UIInterfaceOrientationMask.All
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Configure the view.
    let skView = view as! SKView
    skView.multipleTouchEnabled = false
    
    // Create and configure the scene.
    scene = GameScene(size: skView.bounds.size)
    scene.scaleMode = .AspectFill
    
    // Present the scene.
    skView.presentScene(scene)
  }
}
