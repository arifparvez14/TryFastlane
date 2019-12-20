import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var chipCountTextfield: UITextField!
  @IBOutlet weak var bigBlindTextfield: UITextField!
  @IBOutlet weak var chipCountLabel: UILabel!
  @IBOutlet weak var bigBlindLabel: UILabel!
  @IBOutlet weak var recommendationButton: UIButton!
  @IBOutlet weak var holderView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setRoundedCorners()
    chipCountTextfield.becomeFirstResponder()
  }
  
  func setRoundedCorners() {
    recommendationButton.layer.cornerRadius = 3.0
    holderView.layer.cornerRadius = 3.0
  }
  
  @IBAction func displayRecommendedAction(_ sender: UIButton) {
    
    if chipCountTextfield.text?.count == 0 {
      displayMessage(
        NSLocalizedString("Please enter your chip count", comment: ""),
        title: NSLocalizedString("Action Required", comment: ""))
      return
    }
    if bigBlindTextfield.text?.count == 0 {
      displayMessage(
        NSLocalizedString("Please enter the big blind amount", comment: ""),
        title: NSLocalizedString("Action Required", comment: ""))
      return
    }
    guard
      let chipCountText = chipCountTextfield.text,
      let chipCountValue = Int(chipCountText)
      else {
        return
    }
    guard
      let bigBlindText = bigBlindTextfield.text,
      let bigBlindValue = Int(bigBlindText)
      else {
        return
    }
    
    let totalBlindValue = bigBlindValue + (bigBlindValue / 2)
    let numberOfBigBlinds = chipCountValue / totalBlindValue
    
    if numberOfBigBlinds > 6 {
      displayMessage(
        NSLocalizedString("You can wait for better cards", comment: ""),
        title: NSLocalizedString("Recommendation", comment: ""))
    } else {
      displayMessage(
        NSLocalizedString("Go all in", comment: ""),
        title: NSLocalizedString("Recommendation", comment: ""))
    }
    
    chipCountTextfield.text = nil
    bigBlindTextfield.text = nil
  }
  
  func displayMessage(_ message: String, title: String) {
    let alertController = UIAlertController(
      title: title,
      message: message,
      
      preferredStyle: .alert)
    let cancelAction = UIAlertAction(
      title: NSLocalizedString("OK", comment: ""),
      style: .cancel)
    
    alertController.addAction(cancelAction)
    present(alertController, animated: true)
  }
    
    func FunctinTest(value1: Int, Value2: Int) -> Int {
        return value1 + Value2
    }
    
    func FunctinTest2(value1: Int, Value2: Int) -> Int {
        print("Hello World3")
        return value1 - Value2
    }
  
  @IBAction func backgroundTapped(_ sender: Any) {
    view.endEditing(true)
  }
}
