#import "Marquee.h"

@implementation Marquee

- (void)setTrackInfoOnLabels {
    //NSLog(@"%d", [NSThread isMainThread]);
    
    [self removeLabel:self.lblArtist];
    [self removeLabel:self.lblTrack];
    [self removeLabel:self.lblAlbum];
    [self removeLabel:self.lblArtistMarqueeCopy];
    [self removeLabel:self.lblTrackMarqueeCopy];
    [self removeLabel:self.lblAlbumMarqueeCopy];
    
    self.lblArtist = [[UILabel alloc] init];
    self.lblTrack = [[UILabel alloc] init];
    self.lblAlbum = [[UILabel alloc] init];
    self.lblArtistMarqueeCopy = [[UILabel alloc] init];
    self.lblTrackMarqueeCopy = [[UILabel alloc] init];
    self.lblAlbumMarqueeCopy = [[UILabel alloc] init];
    
    //    NSString *text  = @"Test text. Looking very simple but has many features!";
    //    [self setText:text onLabel:self.lblArtist withTopPosition:-5 andMarqueeCopy:self.lblArtistMarqueeCopy];
    [self setText:[player currentTrack].artistsStr onLabel:self.lblArtist withTopPosition:-5 andMarqueeCopy:self.lblArtistMarqueeCopy];
    [self setText:[player currentTrack].name onLabel:self.lblTrack withTopPosition:6 andMarqueeCopy:self.lblTrackMarqueeCopy];
    [self setText:[player currentTrack].albumName onLabel:self.lblAlbum withTopPosition:20 andMarqueeCopy:self.lblAlbumMarqueeCopy];
    
}

- (void)removeLabel:(UILabel *)label {
    if (label.tag == LabelStateMarquee) {
        label.tag = LabelStateToRemove;
        label.hidden = YES;
    } else {
        [label removeFromSuperview];
    }
}

- (void)setText:(NSString *)text onLabel:(UILabel *)label withTopPosition:(NSInteger)topPos andMarqueeCopy:(UILabel *)marqueeCopy {
    UIFont *labelFont = [UIFont systemFontOfSize:13.0];
    CGSize textSize = [text sizeWithFont:labelFont];
    //NSLog(@"%@ %@ %@", NSStringFromCGSize(textSize), NSStringFromCGRect(label.frame), NSStringFromCGRect(self.viewTrackInfo.frame));
    if (textSize.width > self.viewTrackInfo.frame.size.width) {
        label.frame = CGRectMake(0, topPos, textSize.width, 21);
        marqueeCopy.frame = CGRectMake(textSize.width + playerTrackInfoMarqueeDistance, topPos, textSize.width, 21);
        label.tag = LabelStateMarquee;
        marqueeCopy.tag = LabelStateMarquee;
        
        [self initLabel:label withFont:labelFont andText:text];
        [self initLabel:marqueeCopy withFont:labelFont andText:text];
        [self marqueeMove:label];
        [self marqueeMove:marqueeCopy];
        
    } else {
        label.frame = CGRectMake(0, topPos, self.viewTrackInfo.frame.size.width, 21);
        label.tag = LabelStateNormal;
        [self initLabel:label withFont:labelFont andText:text];
    }
}

- (void)initLabel:(UILabel *)label withFont:(UIFont *)font andText:(NSString *)text {
    [label setFont:font];
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text  = text;
    [self.viewTrackInfo addSubview:label];
}

- (void)marqueeMove:(UILabel *)label {
    CGFloat distance = label.frame.size.width + label.frame.origin.x + playerTrackInfoMarqueeDistance;
    CGFloat animationDurationCoefficient = 0.05;
    
    [UIView beginAnimations:nil context:(__bridge void *) label];
    [UIView setAnimationDuration:distance * animationDurationCoefficient];
    [UIView setAnimationTransition:UIViewAnimationTransitionNone forView:self.viewTrackInfo cache:YES];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    //[UIView setAnimationRepeatAutoreverses:YES];
    //[UIView setAnimationBeginsFromCurrentState:YES];
    label.frame = CGRectMake(-(distance - label.frame.origin.x), label.frame.origin.y, label.frame.size.width, label.frame.size.height);
    [UIView commitAnimations];
}

- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    @try {
        UILabel *label = (__bridge UILabel *)context;
        if (label.tag == LabelStateToRemove) {
            [label removeFromSuperview];
        } else {
            label.frame = CGRectMake(label.frame.size.width + playerTrackInfoMarqueeDistance, label.frame.origin.y, label.frame.size.width, label.frame.size.height);
            //NSLog(@"%@", NSStringFromCGRect(label.frame));
            [self marqueeMove:label];
        }
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
    @finally {
    }
}

@end
