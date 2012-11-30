//
//  View.m
//  Nov15
//
//  Created by Erica Lederman on 11/14/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import "View.h"


@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		textView = [[UITextView alloc] initWithFrame: self.bounds];
		textView.backgroundColor = [UIColor magentaColor];
		textView.font = [UIFont systemFontOfSize: 20];
		textView.editable = NO;	//Don't pop up a keyboard.
		[self addSubview: textView];
		
		UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]
												initWithTarget: self action: @selector(swipe:)
												];
		recognizer.direction = UISwipeGestureRecognizerDirectionRight;
		[self addGestureRecognizer: recognizer];
		
		recognizer = [[UISwipeGestureRecognizer alloc]
					  initWithTarget: self action: @selector(swipe:)
					  ];
		recognizer.direction = UISwipeGestureRecognizerDirectionLeft;
		[self addGestureRecognizer: recognizer];
		
		recognizer = [[UISwipeGestureRecognizer alloc]
					  initWithTarget: self action: @selector(swipe:)
					  ];
		recognizer.direction = UISwipeGestureRecognizerDirectionUp;
		[self addGestureRecognizer: recognizer];
		
		recognizer = [[UISwipeGestureRecognizer alloc]
					  initWithTarget: self action: @selector(swipe:)
					  ];
		recognizer.direction = UISwipeGestureRecognizerDirectionDown;
		[self addGestureRecognizer: recognizer];
		
	}
	return self;
}

- (void) swipe: (UISwipeGestureRecognizer *) recognizer {
	//CGPoint p = [recognizer locationInView: self];
	
	NSString *direction = @"unknown";
	if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
		direction = @"to the right";
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
		direction = @"to left";
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionUp) {
		direction = @"up";
	} else if (recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
		direction = @"now dip";
	}
	
	textView.text = [NSString stringWithFormat:@"%@\n", direction];
	
	for (NSUInteger i = 0; i < recognizer.numberOfTouches; ++i) {
		CGPoint p = [recognizer locationOfTouch: i inView: self];
		
		UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(p.x, p.y, 40, 20)];
		label.backgroundColor = [UIColor clearColor];
		label.text=@"tickle";
		[self addSubview:label];
	}
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end