#import "NSFileManager+Helpers.h"

@implementation NSFileManager (Helpers)

+ (BOOL)createFile:(NSString *)filepath {
    if (![[NSFileManager defaultManager] fileExistsAtPath:filepath]) {
        if (![[NSFileManager defaultManager] createFileAtPath:filepath contents:nil attributes:nil]) {
            NSLog(@"Could not create file \"%@\". Error's code: %d. Error's message: %s", filepath, errno, strerror(errno));
            
            
            return NO;
        }
        else {
            NSLog(@"File \"%@\" successfully created.", filepath);
        }
    } else {
        NSLog(@"File \"%@\" already exist.", filepath);
    }
    
    return YES;
}

+ (unsigned long long)fileSize:(NSString *)path
{
    return  [[[NSFileManager defaultManager] attributesOfItemAtPath:path error:nil] fileSize];
}

@end
