# MOGOpenBookSegue

MOGOpenBookSegue is custom segue like iBooks open animation.

![sample](https://raw.githubusercontent.com/mogmet/MOGOpenBookSegue/master/open-book-animation.gif)

##Requirements

 iOS7.0 or later

## Usage

1. To run the example project, clone the repo, and run `pod install` from the Example directory first.
2. Import header to your ViewController.
    ```objectivec
    #import <MOGOpenBookSegue/MOGOpenBookSegue.h>
    
    or
    
    #import "MOGOpenBookSegue.h"
    ```
3. Change to custom segue on Storyboard.  
    ![sample](https://raw.githubusercontent.com/mogmet/MOGOpenBookSegue/master/segue.png)
4. Add code on your ViewController like this.
    ```objectivec
    -(void)prepareForSegue:(MOGOpenBookSegue *)segue sender:(id)sender {
        [segue setupBookView:self.coverImageButton.imageView.image frame:self.coverImageButton.frame];
        [super prepareForSegue:segue sender:sender];
    }
    ```

* If you want to change duration time, add this code. Default is 1.0f.
```objectivec
    [segue setDurationTime:3.0f];
```
* If you want to do something after animation, you can add this code.
```objectivec
    [segue setCompletionBlock:^(BOOL transitionCompleted) {
        NSLog(@"open!");
    } closeCompletion:^(BOOL transitionCompleted) {
        NSLog(@"close!");
    }];
```

## Installation

MOGOpenBookSegue is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "MOGOpenBookSegue"

## Author

mogmet

## License

MOGOpenBookSegue is available under the MIT license. See the LICENSE file for more info.

