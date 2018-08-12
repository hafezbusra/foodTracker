import UIKit

@IBDesignable class RatingControl: UIStackView{
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    //MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    //MARK: Button action
    func ratingButtonTapped(button: UIButton){
        print("Button Pressed")
    }
    //MARK: private methods
    
    private func setupButtons(){
        
        for _ in 0..<rating{
         
        
        //create the button
        let button = UIButton()
        button.backgroundColor = UIColor.green
        
        //add constrains
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        //Setup the button action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        //add button to the stack
        addArrangedSubview(button)
            
        //add the neeew button array
        ratingButtons.append(button)
        
        }
    }
}
