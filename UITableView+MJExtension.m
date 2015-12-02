//
//  UITableView+MJExtension.m
//  RefreshTest
//
//

#import "UITableView+MJExtension.h"
#import "MJRefresh.h"

@implementation UITableView (MJExtension)

- (void)setheaderImage:(NSString *)imageName
{
    for (UIView *view in self.legendHeader.subviews ) {
        if ([view isKindOfClass:[UIImageView class]]) {
            UIImageView *image = (UIImageView *)view;
            image.image = [UIImage imageNamed:imageName];
        }
    }
}

- (void)setGifHeaderImages:(NSArray *)imagesArray
{
    if (!imagesArray) {
        return;
    }
    NSMutableArray *imagesArr = [NSMutableArray array];
    for (NSString *imageName in imagesArray) {
        UIImage *myImage = [UIImage imageNamed:imageName];
        [imagesArr addObject:myImage];
    }
    [self.gifHeader setImages:imagesArr forState:MJRefreshHeaderStatePulling];
    [self.gifHeader setImages:imagesArr forState:MJRefreshHeaderStateRefreshing];
}


- (void)setMJTextHidden
{
    self.header.stateHidden = YES;
    self.header.updatedTimeHidden = YES;
    self.footer.stateHidden = YES;
}

@end
