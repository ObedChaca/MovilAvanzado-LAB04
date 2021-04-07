import UIKit

class NewCalculatorViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var prevNumber:Double = 0;
    var performingMath = false
    var operation = 0;
    var res: Double = 0;
    var resInvert: Double = 0;
    var dots = false;
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBAction func dot(_ sender: UIButton) {
        
        if dots == false {
            dots = true
            label1.text = label1.text! + String(".")
            
        }
        
    }
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            label1.text = String(sender.tag-1)
            numberOnScreen = Double(label1.text!)!
            performingMath = false
        }else if label1.text == "0"{
            label1.text = String(sender.tag-1)
        }else if res != 0{
            
        }else{
            label1.text = label1.text! + String(sender.tag-1)
            numberOnScreen = Double(label1.text!)!
        }
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label1.text != "" && sender.tag != 11 && sender.tag != 16 && sender.tag != 17 && sender.tag != 18{
            
            if sender.tag == 12{
                prevNumber = Double(label1.text!)!
                label2.text = String(format:"%g",prevNumber)
                numberOnScreen = 0;
                res = 0;
                label4.text = ""
                label3.text = "/"
                label1.text = "0"
                
            } else if sender.tag == 13{
                prevNumber = Double(label1.text!)!
                label2.text = String(format:"%g",prevNumber)
                numberOnScreen = 0;
                res = 0;
                label4.text = ""
                label3.text = "x";
                label1.text = "0"
            } else if sender.tag == 14 {
                prevNumber = Double(label1.text!)!
                label2.text = String(format:"%g",prevNumber)
                numberOnScreen = 0;
                res = 0;
                label4.text = ""
                label3.text = "-";
                label1.text = "0"
            } else if sender.tag == 15 {
                prevNumber = Double(label1.text!)!
                label2.text = String(format:"%g",prevNumber)
                numberOnScreen = 0;
                res = 0;
                label4.text = ""
                label3.text = "+";
                label1.text = "0"
            }
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16 {
            label4.text = String(format:"%g",numberOnScreen)
            if operation == 12{
                //Divicion
                if prevNumber != 0 && numberOnScreen != 0{
                    res = prevNumber / numberOnScreen
                    label1.text = String(format:"%g",res)
                    res = 1
                } else if numberOnScreen == 0{
                    let alert = UIAlertController(title: "Alerta", message: "El divisor no puede ser 0", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    label1.text = ""
                }
                
            } else if operation == 13{
                //Multiplicacion
                res = prevNumber * numberOnScreen
                label1.text = String(format:"%g",res)
                res = 1
            } else if operation == 14{
                //Restar
                res = prevNumber - numberOnScreen
                label1.text = String(format:"%g",res)
                res = 1
            } else if operation == 15{
                //Suma
                res = prevNumber + numberOnScreen
                label1.text = String(format:"%g",res)
                res = 1
            }
        }
        else if sender.tag == 11 {
            label1.text = "0"
            label2.text = ""
            label3.text = ""
            label4.text = ""
            prevNumber = 0;
            numberOnScreen = 0;
            operation = 0;
            res = 0;
            dots = false;
        }
        else if sender.tag == 17 {
            if res == 0 {
                label1.text = "0"
                dots = false
            }
        }
        else if sender.tag == 18 {
            label2.text = ""
            label3.text = ""
            label4.text = ""
            prevNumber = 0;
            numberOnScreen = 0;
            operation = 0;
            resInvert = Double(label1.text!)!
            label1.text = String(format:"%g",resInvert * -1)
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "0"
    }
}
