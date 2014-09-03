# MOGOpenBookSegue

MOGOpenBookSegue is custom segue like iBooks open animation.

## Usage

1. To run the example project, clone the repo, and run `pod install` from the Example directory first.
2. Add code on your ViewController like this.
```objectivec
-(void)prepareForSegue:(MOGOpenBookSegue *)segue sender:(id)sender {
    [segue setupBookView:self.coverImageButton.imageView.image frame:self.coverImageButton.frame];
    [super prepareForSegue:segue sender:sender];
}
```
3. If you want to change duration time, add this code. Default is 1.0f.
```objectivec
    [segue setDurationTime:3.0f];
```

## Installation

MOGOpenBookSegue is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "MOGOpenBookSegue"

## Author

mogmet

## License

MOGOpenBookSegue is available under the MIT license. See the LICENSE file for more info.

