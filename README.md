# SwiftAndOC
##demo功能：
  * 1.在OC项目里: 
    * 1.1.OC代码调用Swift方法
    * 1.2.Swift代码调用OC代码。<br>
  * 2.在Swift项目:
    * 2.1.Swift代码调用OC代码
    * 2.2.OC代码调用Swift方法。<br>

不管在什么项目里，在创建另外一种开发语言文件时系统会提示创建桥接文件OCAndSwift-Bridging-Header.h(其中OCAndSwift代表项目名称。)，一定得有这桥接文件swift代码才能调用OC。
* 功能1.1与2.2<br>
他们都是OC代码调用Swift方法，不管是在什么项目中，使用方法都一样。<br>
`只须在需要使用Swift方法的OC文件中倒入头文件 #import "OCAndSwift-swift.h"`即可，在任何oc文件中导入的头文件都一样，其中OCAndSwift代表项目名称。
* 功能1.2与2.1<br>
他们都是Swift代码调用OC代码。<br>
将OC代码所在头文件放在OCAndSwift-Bridging-Header.h文件里即可，可供任何位置的swift调用，如导入：#import "LXHelpClass.h"。

###Swift代码调用OC方法如下：
```swift
  func tappedButton(sender:UIButton!) {
      self.myImageView.image = LXHelpClass.getEllipseImageWithImage(self.myImageView.image)
      print(sender.tag, terminator: "swift")
  }
```
    
```objective-c
 @interface LXHelpClass : NSObject
 + (UIImage *)getEllipseImageWithImage:(UIImage *)originImage;
 @end
```
###OC控制器push到Swift控制器

```objective-c
- (void)pushBtnClicked:(UIButton *)sender
{
    SwiftController *swiftVC = [[SwiftController alloc] init];
    [self.navigationController pushViewController:swiftVC animated:YES];
}
```

```swift
class SwiftController: UIViewController {
    override func viewDidLoad() {
    ...
    }
    ...
}
```
    
 <br>

###swift的控制器效果图如下，圆形头像是swift调用oc方法实现的功能:<br>
![image](https://github.com/SoftProgramLX/SwiftAndOC/blob/master/OCAndSwift/OCAndSwift/screen.png)

<br>
###`QQ:2239344645`    [我的github](https://github.com/SoftProgramLX?tab=repositories)
