import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var inputFirstNumber: UITextField!
    
    @IBOutlet weak var inputSecondNumber: UITextField!
    
    @IBOutlet weak var lblRes: UILabel!
    
    
    @IBOutlet weak var lblResType: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func calculateOperation(numTextFiledOne:UITextField, numTextFieldTwo: UITextField, operatorSymbold: String) -> Float{
        
        var numOne = Float(numTextFiledOne.text!)!
        var numTwo = Float(numTextFieldTwo.text!)!
        
        var total: Float = 0.0
        
        if operatorSymbold == "S" {
            total = numOne + numTwo
        } else if operatorSymbold == "R" {
            total = numOne - numTwo
        }
        
        numTextFiledOne.text = ""
        numTextFieldTwo.text = ""
        
        return total
    }
    
    @IBAction func onSumAction(_ sender: Any) {
        
        let res = calculateOperation(numTextFiledOne: inputFirstNumber, numTextFieldTwo: inputSecondNumber, operatorSymbold: "S")
        
        lblRes.text = "\(res)"
        
        lblResType.text = "Suma"
        
        inputFirstNumber.text = ""
        inputSecondNumber.text = ""
        
        
    }
    
    
    @IBAction func onSubtractAction(_ sender: Any) {
        
        let res = calculateOperation(numTextFiledOne: inputFirstNumber, numTextFieldTwo: inputSecondNumber, operatorSymbold: "R")
        
        lblRes.text = "\(res)"
        
        lblResType.text = "Resta"
        
        inputFirstNumber.text = ""
        inputSecondNumber.text = ""
        
    }
    
    
    @IBAction func onMultiAction(_ sender: Any) {
        
        let res = calculateOperation(numTextFiledOne: inputFirstNumber, numTextFieldTwo: inputSecondNumber, operatorSymbold: "M")
        
        lblRes.text = "\(res)"
        
        lblResType.text = "Multiplicacíon"
        
        inputFirstNumber.text = ""
        inputSecondNumber.text = ""
        
    }
    
    
    
    @IBAction func onDivAction(_ sender: Any) {
        
        let res = calculateOperation(numTextFiledOne: inputFirstNumber, numTextFieldTwo: inputSecondNumber, operatorSymbold: "D")
        
        lblRes.text = "\(res)"
        
        lblResType.text = "Divición"
        
        inputFirstNumber.text = ""
        inputSecondNumber.text = ""
        
    }
    
}
