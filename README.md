CSS3 UISwitch
=============

A pretty sweet and pure CSS3 iOS 7 UISwitch.

![image](uiswitch-demo.gif)

#### [See it in action!](http://codepen.io/cbp/pen/FLdjI)

## Really? Another CSS3 switch?

I've been looking for a perfect and pixel-perfect switch button that had the same feeling as the [UISwitch](https://developer.apple.com/library/ios/documentation/uikit/reference/uiswitch_class/Reference/Reference.html) in iOS 7 but never found one, so I built one myself.

I had a few requirements for the component

- The markup should only consist of a single element
- The animation should be nearly identical with Apple's UISwitch
- The bounciness should be just right
- Even the tiny details such as the gradient background
- Should be a functional checkbox first and foremost


## Grab it

1. Install using [Bower](http://bower.io/)

        bower install uiswitch

2. Clone repository

        git clone https://github.com/fnky/css3-uiswitch
        bower install

## Use it

#### CSS

The switch is very easy to customize. Using plain vanilla CSS it's just a matter of subclassing. Start styling your custom switch

    /* Active Background Tint (when pressed and hold) */
    .custom { background-color: #eadcbc; }

    /* Background Tint */
    .custom::before { background-color: #f7f2e5; }

    /* Knob Tint */
    .custom::after { background: #fff3a6; }

    /* Checked background tint */
    .custom:checked {
            background-color: #ffca3f; /* fallback */
            background-image: linear-gradient(-180deg,
                                #ffca3f 0%, /* top */
                                #feca40 100%); /* bottom */
    }

and your HTML would be something like this

    <input type="checkbox" class="uiswitch custom">

#### Sass

It's even easier with Sass. The class `.uiswitch` is provided out of the box but is also provided with a mixin and an extend (if you really want to customize it)

You can change the global style for all `uiswitch` classes with the following variables

    $uiswitch-thumb-tint: #ffffff !default;
    $uiswitch-on-tint: #4CD964 !default;

    $uiswitch-active-tint: #e5e5e5 !default;
    $uiswitch-on-tint-start: $uiswitch-on-tint !default;
    $uiswitch-on-tint-end: desaturate($uiswitch-on-tint-start, 1) !default;
    $uiswitch-off-tint: #ffffff !default;

If you however wan't to customize a custom class you can use the mixin

    .my-switch {
        @include uiswitch($on-tint: hotpink,
                    $thumb-tint: lime,
                    $off-tint: yellow,
                    $active-tint: gray);
    }

And if you want to customize it even further you can exted the `%uiswitch`

    .my-switch {
        @extend %uiswitch;

        border-radius: 4px;

        // Background
        &::before {
            border-radius: 2px;
        }

        // Thumb
        &::after {
            border-radius: 1px;
        }

        // Checked background
        &:checked {
            background: hotpink;
        }

        // Checked thumb
        &:checked::after {
            background-color: #333;
        }
    }

## License

MIT
