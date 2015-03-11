//
//  Constants.h
//  PUBDemoApp
//
//  Created by Ajay Bhardwaj on 22/1/15.
//  Copyright (c) 2015 iAppsAsia. All rights reserved.
//

#ifndef PUBDemoApp_Constants_h
#define PUBDemoApp_Constants_h


#endif

#define SIDE_MENU_CELL_FONT @"Opensans"
#define BEBAS_NEUE_FONT @"BebasNeue"
#define OPEN_SANS_REGULAR @"Opensans"
#define OPEN_SANS_BOLD @"Opensans-Bold"
#define OPTIMA_BOLD @"Optima-Bold"
#define OPTIMA_REGULAR @"Optima-Regular"
#define ROBOTO_BOLD @"Roboto-Bold"
#define ROBOTO_REGULAR @"Roboto-Regular"
#define ROBOTO_MEDIUM @"Roboto-Medium"
#define PLACE_NAME @"name"




#pragma mark - Device Screen Sizes For UI

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)


