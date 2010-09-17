//
//  AnimationViewViewController.m
//  AnimationView
//
//  Created by ダニー on 10/09/17.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AnimationViewViewController.h"

@implementation AnimationViewViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	// 画像表示用のビューを用意。
	UIImageView *photoView = [[[UIImageView alloc] init] autorelease];
	
	// 画像の配列を用意。配列の中身がループされます。
	NSArray *arrayImages = [NSArray arrayWithObjects:
							[UIImage imageNamed:@"01.jpg"],
							[UIImage imageNamed:@"02.jpg"],
							[UIImage imageNamed:@"03.jpg"],
							[UIImage imageNamed:@"04.jpg"],
							[UIImage imageNamed:@"05.jpg"],
							nil];
	
	// 配列を設定
	[photoView setAnimationImages:arrayImages];
	
	// 画像を切り替えるタイミングを設定
	[photoView setAnimationDuration:10];
	
	// ループする回数を指定。（0=無制限？）
	[photoView setAnimationRepeatCount:0];
	
	// 画像のアスペクト比を保持するように設定。
	[photoView setContentMode:UIViewContentModeScaleAspectFit];
	
	// アニメーションさせる。
	[photoView startAnimating];
	
	// ビューのサイズを設定。
	[photoView setFrame:CGRectMake(0, 0, self.view.frame.size.width / 3 * 2, self.view.frame.size.height / 3 * 2)];
	
	// 画面中央に配置する。
	[photoView setCenter:CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)];
	
	// スーパービューに追加する。
	[self.view addSubview:photoView];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
