/*
 * 
 * #########################################################
 * #                        _ooOoo_                        #
 * #                       o8888888o                       #
 * #                       88" . "88                       #
 * #                       (| -_- |)                       #
 * #                        O\ = /O                        #
 * #                    ____/`---'\____                    #
 * #                  .   ' \\| |// `.                     #
 * #                   / \\||| : |||// \                   #
 * #                 / _||||| -:- |||||- \                 #
 * #                   | | \\\ - /// | |                   #
 * #                 | \_| ''\---/'' | |                   #
 * #                  \ .-\__ `-` ___/-. /                 #
 * #               ___`. .' /--.--\ `. . __                #
 * #            ."" '< `.___\_<|>_/___.' >'"".             #
 * #           | | : `- \`.;`\ _ /`;.`/ - ` : | |          #
 * #             \ \ `-. \_ __\ /__ _/ .-` / /             #
 * #     ======`-.____`-.___\_____/___.-`____.-'======     #
 * #                        `=---='                        #
 * #                 佛祖保佑       永无bug                 #
 * #                                                       #
 * #########################################################
 */

//
//  DDDRootViewController.h
//  ddd
//
//  Created by lantoo on 15/9/14.
//  Copyright (c) 2015年 雷霰霆. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TPKeyboardAvoidingTableView.h>

@interface DDDRootViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) TPKeyboardAvoidingTableView *myTableView;

@end