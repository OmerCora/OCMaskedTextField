//
//  ViewController.m
//  OCMaskedTextFieldViewSample
//
//  Created by Ömer Cora on 11/04/14.
//  Copyright (c) 2014 MakaraKukara. All rights reserved.
//
#import "ViewController.h"

#import "OCMaskedTextFieldView.h"

#define LIGHT_FONT  [UIFont fontWithName:@"Avenir-Light"  size:14]
#define MEDIUM_FONT [UIFont fontWithName:@"Avenir-Medium" size:15]

#define DARK_COLOR             [UIColor colorWithRed: 68/255.0 green: 68/255.0 blue: 68/255.0 alpha:1.0]
#define KILL_LA_KILL_RED_COLOR [UIColor colorWithRed:221/255.0 green: 45/255.0 blue: 31/255.0 alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addSampleTextFields];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addSampleTextFields
{
    //IBAN field
    UILabel* label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 70, 280, 20)];
    label1.text = @"IBAN:";
    label1.textColor = [UIColor whiteColor];
    label1.font = LIGHT_FONT;
    [self.view addSubview:label1];
    OCMaskedTextFieldView *textField = [[OCMaskedTextFieldView alloc]
                                        initWithFrame:CGRectMake(20, 94, 280, 33)
                                        andMask:@"TR - #### #### #### #### #### ####"
                                        showMask:YES];
    [[textField maskedTextField] setBorderStyle:UITextBorderStyleNone];
    [[textField maskedTextField] setFont:MEDIUM_FONT];
    [[textField maskedTextField] setTintColor:KILL_LA_KILL_RED_COLOR];
    [[textField maskedTextField] setKeyboardAppearance:UIKeyboardAppearanceDark];
    
    /* 
    New Method to programatically assign input to a masked field
    excess text will be ignored.
    
    setting 1234123412341234123412341234 to an IBAN field works as follows:
    mask  : TR - #### #### #### #### #### ####
    
    [textField setRawInput:@"1234123412341234123412341234"];
    
    output: TR - 1234 1234 1234 1234 1234 1234   
     */
    [textField setRawInput:@"1234123412341234123412341234"];
    
    //Placeholder mode
    //[textField setPlaceholderMode:YES];
    //[[textField maskedTextField] setPlaceholder:@"IBAN"];
    [self setupTextField:[textField maskedTextField]];
    [self.view addSubview:textField];
    
    
    //date field
    UILabel* label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 70+68, 280, 20)];
    label2.text = @"Date:";
    label2.textColor = [UIColor whiteColor];
    label2.font = LIGHT_FONT;
    [self.view addSubview:label2];
    OCMaskedTextFieldView *textField2 = [[OCMaskedTextFieldView alloc]
                                         initWithFrame:CGRectMake(20, 94+68, 280, 33)
                                         andMask:@"Day: ## / Month: ##"
                                         showMask:YES];
    [[textField2 maskedTextField] setBorderStyle:UITextBorderStyleNone];
    [[textField2 maskedTextField] setFont:MEDIUM_FONT];
    [[textField2 maskedTextField] setTintColor:KILL_LA_KILL_RED_COLOR];
    [[textField2 maskedTextField] setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self setupTextField:[textField2 maskedTextField]];
    [self.view addSubview:textField2];
    
    //phone number field
    UILabel* label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 70+68+68, 280, 20)];
    label3.text = @"Phone number:";
    label3.textColor = [UIColor whiteColor];
    label3.font = LIGHT_FONT;
    [self.view addSubview:label3];
    OCMaskedTextFieldView *textField3 = [[OCMaskedTextFieldView alloc]
                                         initWithFrame:CGRectMake(20, 94+68+68, 280, 33)
                                         andMask:@"+90 (###) ### ## ##"
                                         showMask:YES];
    [[textField3 maskedTextField] setBorderStyle:UITextBorderStyleNone];
    [[textField3 maskedTextField] setFont:MEDIUM_FONT];
    [[textField3 maskedTextField] setTintColor:KILL_LA_KILL_RED_COLOR];
    [[textField3 maskedTextField] setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self setupTextField:[textField3 maskedTextField]];
    [self.view addSubview:textField3];
    
    
    //serial number field
    UILabel* label4 = [[UILabel alloc] initWithFrame:CGRectMake(20, 70+68+68+68, 280, 20)];
    label4.text = @"Serial Number:";
    label4.textColor = [UIColor whiteColor];
    label4.font = LIGHT_FONT;
    [self.view addSubview:label4];
    OCMaskedTextFieldView *textField4 = [[OCMaskedTextFieldView alloc]
                                         initWithFrame:CGRectMake(20, 94+68+68+68, 280, 33)
                                         andMask:@"[&&&&]-[&&&&]-[&&&&]-[&&&&]"
                                         showMask:YES];
    [textField4 setNumericBlank:@"  " alphanumericBlank:@"  " letterBlank:@"  "];
    [textField4 showMask];
    [[textField4 maskedTextField] setBorderStyle:UITextBorderStyleNone];
    [[textField4 maskedTextField] setFont:MEDIUM_FONT];
    [[textField4 maskedTextField] setTintColor:KILL_LA_KILL_RED_COLOR];
    [[textField4 maskedTextField] setTextAlignment:NSTextAlignmentCenter];
    [[textField4 maskedTextField] setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self setupTextField:[textField4 maskedTextField]];
    [self.view addSubview:textField4];
    
    [textField becomeFirstResponder];
}

- (void)setupTextField:(UITextField*)textField
{
    textField.backgroundColor    = [UIColor whiteColor];
    textField.layer.borderColor  = [UIColor whiteColor].CGColor;
    textField.layer.borderWidth  = 0.0;
    textField.layer.cornerRadius = 1.0;
    if (textField.textAlignment != NSTextAlignmentCenter)
    {
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(8, 0, 0);
    }
}

@end
