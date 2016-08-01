//
//  Home_Tips_ViewController.m
//  Chaeum
//
//  Created by 김영훈 on 2016. 8. 1..
//  Copyright © 2016년 김영훈. All rights reserved.
//

#import "Home_Tips_ViewController.h"

@implementation Home_Tips_ViewController

@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.scrollView.contentSize = CGSizeMake(375*3, 100);
    
    for(int i = 0 ; i < 3 ; i ++)
    {
        CGRect ImageViewFreame;
        ImageViewFreame = CGRectMake(375*i, 0, 375, 170);
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:ImageViewFreame];
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"tip_%d.jpg",(i+1)]];
        imageView.image = image;
        [self.scrollView addSubview:imageView];
    }
    
    self.pageControl.currentPage = 0;
    self.pageControl.numberOfPages = 3;
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x-pageWidth/2)/pageWidth)+1;
    self.pageControl.currentPage = page;
}

@end
