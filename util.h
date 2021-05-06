//
// Created by 全 on 2021/5/5.
//

#ifndef CONTAINER_UTIL_H
#define CONTAINER_UTIL_H
#include <unistd.h>
//int 转 string
void int_to_string(unsigned int N,char arr[]);

//chroot init 创建目录
int chroot_init(const char * file_pwd);

//cgroups 初始化
int cgroups_init(pid_t pid1, const char* con_name);

//执行shell 执行chroot准备工作相关shell
int _exec_shell(char* exec);
#endif //CONTAINER_UTIL_H
