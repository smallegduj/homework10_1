import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    func editHeight(noti:NSNotification) {
        let height = noti.userInfo!["height"] as! String
        heightLabel.text = height
    }
    
    func editWeight(noti:NSNotification) {
        let weight = noti.userInfo!["weight"] as! String
        weightLabel.text = weight
    }
    
    
    @IBAction func backBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.editHeight(_:)), name: "editHeight", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.editWeight(_:)), name: "editWeight", object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

