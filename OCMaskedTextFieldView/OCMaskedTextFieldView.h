//
//  OCMaskedTextField.h
//  OCFieldMask
//
//  Created by Ömer Cora on 09/04/14.
//  Copyright (c) 2014 MakaraKukara. All rights reserved.
//

/*
 
 Copyright 2014 Omer Cora
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

/*
 
 Example Format Strings:
 
 IBAN:
 format => @"??#### #### #### #### #### ####";
 output => @"TR1337 1337 1337 1337 1337 1337";
 
 Cell Phone:
 format => @"+## (###) ### ## ##";
 output => @"+90 (532) 666 77 88";
 
 Serial Number:
 format => @"&&&&-&&&&-&&&&-&&&&-&&&&";
 output => @"A76Y-88HG-4OPC-XB9A-M432";
 
 */

#import <UIKit/UIKit.h>

@interface OCMaskedTextFieldView : UIView <UITextFieldDelegate>

- (id)initWithFrame: (CGRect)frame;
- (id)initWithFrame: (CGRect)frame andMask: (NSString*)maskString;
- (id)initWithFrame: (CGRect)frame andMask: (NSString*)maskString showMask:(BOOL)showMask;

- (void)setMask: (NSString*)maskString;
- (void)setNumericBlank: (NSString*) numblank alphanumericBlank: (NSString*)alphaNumBlank letterBlank:(NSString*)letBlank;

- (UITextField*)maskedTextField;
//get the user input text without any format
- (NSString*)getRawInputText;
//validation for the completion of the masked field
- (BOOL)isFieldComplete;

//resets the field
- (void)showMask;

//when set YES, view shows the placeholder text when the textfield ends editing;
- (void)setPlaceholderMode:(BOOL)mode;

//apply the mask onto a raw input
- (void)setRawInput:(NSString*)rawInput;

@end

