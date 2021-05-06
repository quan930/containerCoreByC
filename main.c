//
// Created by 全 on 2021/4/26.
//

#define _GNU_SOURCE

#include <sched.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>
#include "util.h"
#include <dirent.h>
#include <sys/stat.h>

//#define FILEP "/root/chroottest9"
//#define FCONNAME "chroottest9"


/**
 * 进入bash
 * @return
 */
int spawn_bash(void)
{
    char *newargv[] = { "/bin/bash", NULL };

    execv("/bin/bash", newargv);
    perror("exec");
//    失败的退出状态。
    exit(EXIT_FAILURE);
}

int child(const char *con_name)
{
//    printf("pid as seen in the child: %lu\n", (unsigned long)getpid());

    //拼接路径
    char filep[100]="/root/";
    strcat(filep,con_name);

    char arr[100]="../chrootinit.sh ";
    strcat(arr,filep);
    printf("exec shell start:\n");
    //执行chroot准备工作相关shell
    _exec_shell(arr);
    printf("exec shell finish\n");

    //更改目录
    if (chdir(filep)!=0){
        perror("chdir:");
        exit(-1);
    }

    //chroot
    int ret;
    /*chroot 需要root权限*/
    ret = chroot(filep);
    if (ret != 0) {
        perror("chroot:");
        exit(-1);
    }
    spawn_bash();
}

int main(int argc, char *argv[])
{
    //todo
    if (argc!=3){
        printf("缺少必要参数");
        return 0;
    }

    int namespaces = CLONE_NEWUTS|CLONE_NEWPID|CLONE_NEWIPC|CLONE_NEWNS|CLONE_NEWNET;
    pid_t p = clone(child, malloc(4096) + 4096, SIGCHLD|namespaces, argv[1]);
    if (p == -1) {
        perror("clone");
        exit(1);
    }
    printf("当前进程id: %lu\n", (unsigned long)getpid());
    cgroups_init(p,argv[1]);
    printf("child pid: %u\n", p);
    waitpid(p, NULL, 0);
    printf("finish .......\n");
    return 0;
}