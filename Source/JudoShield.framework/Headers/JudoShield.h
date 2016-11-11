//
//  JudoShield.h
//  JudoShield
//
//  Copyright (c) 2016 Alternative Payments Ltd
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#import <UIKit/UIKit.h>

FOUNDATION_EXPORT double JudoShieldVersionNumber;

FOUNDATION_EXPORT const unsigned char JudoShieldVersionString[];

@import CoreLocation;

@interface JudoShield : NSObject


/**
 *  uses the CoreLocation Framework to register for receiving location updates and passes either the current location of the user or an error
 *
 *  @param locationUpdateBlock the completion block that gets called when a location has been found or an error occured
 */
- (void)locationWithCompletion:(nullable void (^)(CLLocationCoordinate2D coordinate, NSError * __nullable error))locationUpdateBlock DEPRECATED_MSG_ATTRIBUTE("This method will be removed in a future release.");


/**
 *  Device Signal Dictionary
 *
 *  @return a collaboration of various different information sources to identify a certain device for fraud prevention
 */
- (nonnull NSDictionary<NSString *, NSObject *> *)deviceSignal DEPRECATED_MSG_ATTRIBUTE("This method will be removed in a future release. Please use the method encryptedDeviceSignal instead.");

/**
 *  Device Signal String
 *
 *  @return a collaboration of various different information sources to identify a certain device for fraud prevention
 */
- (nonnull NSDictionary<NSString *, NSObject *> *)encryptedDeviceSignal;

@end
