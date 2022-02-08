
import UIKit
import SnapKit

class MainViewController: UIViewController, UIScrollViewDelegate, UITextFieldDelegate {
    
    let subView = UIView()
    let scrollView = UIScrollView()
    let containerView = UIView()
    let balanceBarView = UIView()
    let backgroundImageView = UIImageView()
    let mainView = UIView()
    let show = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        set()
    }

}
