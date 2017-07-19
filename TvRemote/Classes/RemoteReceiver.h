//
//  RemoteReceiver.h
//  RemoteReceiver
//
//  Created by mrjyuhongjiang on 07/19/2017.
//  Copyright (c) 2017 mrjyuhongjiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol RemoteReceiverDelegate <NSObject>

@optional

-(void) didReceiveMessage:(NSDictionary *)userInfo;

@end

@interface RemoteReceiver : NSObject

@property(nonatomic, weak) id<RemoteReceiverDelegate> delegate;

@end
