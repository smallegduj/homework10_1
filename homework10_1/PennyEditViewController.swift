import UIKit

class PennyEditViewController: UIViewController {

    var heightInfo:String!
    var weightInfo:String!
    
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    
    @IBAction func doneBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        NSNotificationCenter.defaultCenter().postNotificationName("editHeight", object: nil, userInfo: ["height":self.heightTextField.text!])
        NSNotificationCenter.defaultCenter().postNotificationName("editWeight", object: nil, userInfo: ["weight":self.weightTextField.text!])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.heightTextField.text = self.heightInfo
        self.weightTextField.text = self.weightInfo
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
