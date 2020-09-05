# CustomView
Create a class CustomView.swift and xib named CustomView.xib.

## Link File Owner

- Open CustomView.xib
- Click on file owner and provide the custom class name.

![LinkFileOwner](/Link-File-Owner.png?raw=true "Link File Owner")

## Link Root View

- Open CustomView.xib
- Click root view and join the view outlet with file owner.

![Link Root View](/Link-View.png?raw=true "Link Root View")

## Load view from XIB in code
- Open CustomView.swift
- Add following code to load view from xib. Here xib name is same as class name.

```swift
func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor),
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        self.view = view
    }
```
## Invoke loadViewFromNib() from Init
- Call the loadViewFromNib() from following init methods.

``` swift
override init(frame: CGRect)
```

``` swift
required public init?(coder aDecoder: NSCoder)
```

## Embed CustomView

- Open your storyboard or viewcontroller xib.
- Drag UIView and add appropriate constraints.
- Change class for this view to CustomView.
- Create outlet for to use in code.

![EmbedCustomView](/Embed-CustomView.png?raw=true "Embed Custom View")
```
