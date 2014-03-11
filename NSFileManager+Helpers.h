@interface NSFileManager (Helpers)

+ (BOOL)createFile:(NSString *)filepath;
+ (unsigned long long)fileSize:(NSString *)path;

@end
