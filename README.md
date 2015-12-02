# MJRefreshExtension
first version
     
MJRefresh的简单扩展
       
使用方法：
     
1.隐藏MJ文字信息
      [self.tableView setMJTextHidden];
       

2.修改MJ Header的箭头图片
      [self.tableView setheaderImage:@"xxx"];
       
    
3.使用MJ GifHeader动画效果
      [self.tableView addGifHeaderWithRefreshingTarget:self refreshingAction:@selector(refresh)];
      NSArray *imageNameArr = @[@"xxx1",@"xxx2",@"xxx3"];
      [self.tableView setGifHeaderImages:imageNameArr];
  
