//
//  UITableView+MJExtension.h
//  RefreshTest
//
//

#import <UIKit/UIKit.h>

@interface UITableView (MJExtension)

/**设置header头部图片*/
- (void)setheaderImage:(NSString *)imageName;

/**设置header头部动画*/
- (void)setGifHeaderImages:(NSArray *)imagesArray;

/**隐藏文字*/
- (void)setMJTextHidden;

@end
