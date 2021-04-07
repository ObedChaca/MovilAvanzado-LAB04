import UIKit

class AverageViewController: UIViewController {
    
    @IBOutlet weak var NL1: UITextField!
    @IBOutlet weak var NL2: UITextField!
    @IBOutlet weak var NL3: UITextField!
    @IBOutlet weak var NL4: UITextField!
    @IBOutlet weak var NL5: UITextField!
    @IBOutlet weak var NL6: UITextField!
    
    @IBOutlet weak var labelLab1: UILabel!
    @IBOutlet weak var labelLab2: UILabel!
    @IBOutlet weak var labelLab3: UILabel!
    @IBOutlet weak var labelLab4: UILabel!
    @IBOutlet weak var labelLab5: UILabel!
    @IBOutlet weak var labelLab6: UILabel!
    
    var notalab1:Float = 0;
    var notalab2:Float = 0;
    var notalab3:Float = 0;
    var notalab4:Float = 0;
    var notalab5:Float = 0;
    var notalab6:Float = 0;
    
    @IBOutlet weak var NT1: UITextField!
    @IBOutlet weak var NT2: UITextField!
    @IBOutlet weak var NT3: UITextField!
    @IBOutlet weak var NT4: UITextField!
    
    @IBOutlet weak var labelTeo1: UILabel!
    @IBOutlet weak var labelTeo2: UILabel!
    @IBOutlet weak var labelTeo3: UILabel!
    @IBOutlet weak var labelTeo4: UILabel!
    
    var notateo1:Float = 0;
    var notateo2:Float = 0;
    var notateo3:Float = 0;
    var notateo4:Float = 0;
    
    @IBOutlet weak var NF: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnCalc(_ sender: UIButton) {
        //Lab
        if NL1.text == "" {
            NL1.text = "0.0"
            notalab1 = 0
            labelLab1.textColor = UIColor.red
        }
        
        if NL2.text == "" {
            NL2.text = "0.0"
            notalab2 = 0
            labelLab2.textColor = UIColor.red
        }
        
        if NL3.text == "" {
            NL3.text = "0.0"
            notalab3 = 0
            labelLab3.textColor = UIColor.red
        }
        
        if NL4.text == "" {
            NL4.text = "0.0"
            notalab4 = 0
            labelLab4.textColor = UIColor.red
        }
        
        if NL5.text == "" {
            NL5.text = "0.0"
            notalab5 = 0
            labelLab5.textColor = UIColor.red
        }
        
        if NL6.text == "" {
            NL6.text = "0.0"
            notalab6 = 0
            labelLab6.textColor = UIColor.red
        }
        
        if NL1.text == "."{
            NL1.text = "0.0"
            notalab1 = 0
            labelLab1.textColor = UIColor.red
        } else {
            notalab1 = Float(NL1.text!)!
        }
        
        if notalab1 > 20 {
            NL1.text = "20"
            notalab1 = 20
            labelLab1.textColor = UIColor.green
        }else if notalab1 < 13 {
            labelLab1.textColor = UIColor.red
        } else if notalab1 >= 13 {
            labelLab1.textColor = UIColor.green
        }
        
        notalab2 = Float(NL2.text!)!
        if notalab2 > 20 {
            NL2.text = "20"
            notalab2 = 20
            labelLab2.textColor = UIColor.green
        }else if notalab2 < 13 {
            labelLab2.textColor = UIColor.red
        } else if notalab2 >= 13 {
            labelLab2.textColor = UIColor.green
        }
        
        notalab3 = Float(NL3.text!)!
        if notalab3 > 20 {
            NL3.text = "20"
            notalab3 = 20
            labelLab3.textColor = UIColor.green
        }else if notalab3 < 13 {
            labelLab3.textColor = UIColor.red
        } else if notalab3 >= 13 {
            labelLab3.textColor = UIColor.green
        }
        
        notalab4 = Float(NL4.text!)!
        if notalab4 > 20 {
            NL4.text = "20"
            notalab4 = 20
            labelLab4.textColor = UIColor.green
        }else if notalab4 < 13 {
            labelLab4.textColor = UIColor.red
        } else if notalab4 >= 13 {
            labelLab4.textColor = UIColor.green
        }
        
        notalab5 = Float(NL5.text!)!
        if notalab5 > 20 {
            NL5.text = "20"
            notalab5 = 20
            labelLab5.textColor = UIColor.green
        }else if notalab5 < 13 {
            labelLab5.textColor = UIColor.red
        } else if notalab5 >= 13 {
            labelLab5.textColor = UIColor.green
        }
        
        notalab6 = Float(NL6.text!)!
        if notalab6 > 20 {
            NL6.text = "20"
            notalab6 = 20
            labelLab6.textColor = UIColor.green
        }else if notalab6 < 13 {
            labelLab6.textColor = UIColor.red
        } else if notalab6 >= 13 {
            labelLab6.textColor = UIColor.green
        }
        
        //Teo
        if NT1.text == "" {
            NT1.text = "0.0"
            notateo1 = 0
            labelTeo1.textColor = UIColor.red
        }
        
        if NT2.text == "" {
            NT2.text = "0.0"
            notateo2 = 0
            labelTeo2.textColor = UIColor.red
        }
        
        if NT3.text == "" {
            NT3.text = "0.0"
            notateo3 = 0
            labelTeo3.textColor = UIColor.red
        }
        
        if NT4.text == "" {
            NT4.text = "0.0"
            notateo4 = 0
            labelTeo4.textColor = UIColor.red
        }
        
        notateo1 = Float(NT1.text!)!
        if notateo1 > 20 {
            NT1.text = "20"
            notateo1 = 20
            labelTeo1.textColor = UIColor.green
        }else if notateo1 < 13 {
            labelTeo1.textColor = UIColor.red
        } else if notateo1 >= 13 {
            labelTeo1.textColor = UIColor.green
        }
        
        notateo2 = Float(NT2.text!)!
        if notateo2 > 20 {
            NT2.text = "20"
            notateo2 = 20
            labelTeo2.textColor = UIColor.green
        }else if notateo2 < 13 {
            labelTeo2.textColor = UIColor.red
        } else if notateo2 >= 13 {
            labelTeo2.textColor = UIColor.green
        }
        
        notateo3 = Float(NT3.text!)!
        if notateo3 > 20 {
            NT3.text = "20"
            notateo3 = 20
            labelTeo3.textColor = UIColor.green
        }else if notateo3 < 13 {
            labelTeo3.textColor = UIColor.red
        } else if notateo3 >= 13 {
            labelTeo3.textColor = UIColor.green
        }
        
        notateo4 = Float(NT4.text!)!
        if notateo4 > 20 {
            NT4.text = "20"
            notateo4 = 20
            labelTeo4.textColor = UIColor.green
        }else if notateo4 < 13 {
            labelTeo4.textColor = UIColor.red
        } else if notateo4 >= 13 {
            labelTeo4.textColor = UIColor.green
        }
        
        var promlab = ((notalab1+notalab2+notalab3+notalab4+notalab5+notalab6)/6)*0.6
        
        var promteo = ((notateo1+notateo2+notateo3+notateo4)/4)*0.4
        
        var notafinal = promlab + promteo
        
        NF.text = String(notafinal)
        
    }

    @IBAction func reset(_ sender: UIButton) {
        
        NL1.text = ""
        NL2.text = ""
        NL3.text = ""
        NL4.text = ""
        NL5.text = ""
        NL6.text = ""
        
        NT1.text = ""
        NT2.text = ""
        NT3.text = ""
        NT4.text = ""
        
        var newblue = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        
        labelLab1.textColor = newblue
        labelLab2.textColor = newblue
        labelLab3.textColor = newblue
        labelLab4.textColor = newblue
        labelLab5.textColor = newblue
        labelLab6.textColor = newblue
        
        labelTeo1.textColor = newblue
        labelTeo2.textColor = newblue
        labelTeo3.textColor = newblue
        labelTeo4.textColor = newblue
        
        NF.text = "0.0"
        
    }
}
