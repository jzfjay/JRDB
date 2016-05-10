//
//  JRDBTests.m
//  JRDBTests
//
//  Created by JMacMini on 16/5/10.
//  Copyright © 2016年 Jrwong. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "JRReflectUtil.h"
#import "NSObject+JRDB.h"
#import "JRSqlGenerator.h"

@interface JRDBTests : XCTestCase

@end

@implementation JRDBTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testIvars {
    NSArray *arr = [JRReflectUtil ivarAndEncode4Clazz:[Person class]];
    Person *p = [[Person alloc] init];
    [p setValue:@10 forKey:@"a_int"];
    NSLog(@"%@", [Person jr_excludePropertyNames]);
    NSLog(@"%d", p.a_int);
    NSLog(@"%@", arr);
}

- (void)testGenerateSql {
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end