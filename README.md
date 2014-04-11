OCMaskedTextField
=================

Simple class to display dynamically masked textFields

![SeeSampleProject](https://github.com/OmerCora/OCMaskedTextField/raw/master/sample-screenshot.png)

Usage
=================

To use OCMaskedTextFieldView, simply initialize the view with the desired format/mask string.

<pre><code>
OCMaskedTextFieldView *textField = [[OCMaskedTextFieldView alloc]
                                        initWithFrame:CGRectMake(20, 94, 280, 33)
                                        andMask:@"TR - #### #### #### #### #### ####"
                                        showMask:YES];

</code></pre>

Default mask supports 3 character sets and is expandable.
Hardcoded values are also supported on the masks.

<pre><code>//Default special mask characters:
'#' : Numeric Values
'&' : Alphanumeric Values
'?' : Letter Values
</code></pre>


Sample Mask Strings,

<pre><code>//IBAN: @"TR - #### #### #### #### #### ####"

//Phone Number: @"+90 (###) ### ## ##"

//Serial Number: @"[&&&&]-[&&&&]-[&&&&]-[&&&&]"

// Name: @"Mr/Mrs. ?????????????"
</code></pre>

Blank values can also be set manually for each speacial character. (default is "_")

<pre><code>[textField setNumericBlank:@"  " alphanumericBlank:@"  " letterBlank:@"  "];
[textField showMask];
</code></pre>

License
=================

Licensed under the Apache License, Version 2.0
See Details: http://www.apache.org/licenses/LICENSE-2.0.html
