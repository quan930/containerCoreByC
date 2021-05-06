//
// Created by 全 on 2021/5/5.
//

#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

void int_to_string(unsigned int N,char arr[]){
    //仅支持有符号4字节的int类型，范围-2147483648 - 2147483647
    int i,j;
    char stack[20]; //栈，int的最值最多10位
    i=0; //计数器
    while (N/10!=0){//说明N还不是一位数，继续拆
        stack[i]=(char)(48+N%10); //字符的1 - 数字的1 = 48，N%10获取N的个位数，并把转换后的字符入栈
        N=N/10;
        i++;
    }
    stack[i]=(char)(48+N); //当循环结束，N必定是一个一位数
    for (j=i;j>-1;j--){//将栈中的字符出栈
        arr[i-j]=stack[j];
    }
    arr[i+1]='\0';
}

int cgroups_init(pid_t pid1, const char* con_name,const char* mem_max){
    //拼接shell 执行命令
    char arr[256]="../cgroupsinit.sh ";
    strcat(arr,con_name);
    strcat(arr," ");
    char temp[100];
    int_to_string(pid1,temp);
    strcat(arr,temp);
    strcat(arr," ");
    strcat(arr,mem_max);

    int rv = system(arr);

    if (WIFEXITED(rv)){
        printf("subprocess exited, exit code: %d\n", WEXITSTATUS(rv));
        if (0 == WEXITSTATUS(rv))
        {
            // if command returning 0 means succeed
            printf("command succeed\n");
        }
        else
        {
            if(127 == WEXITSTATUS(rv))
            {
                printf("command not found\n");
                return WEXITSTATUS(rv);
            }
            else
            {
                printf("command failed: %s\n", strerror(WEXITSTATUS(rv)));
                return WEXITSTATUS(rv);
            }
        }
    }else{
        printf("subprocess exit failed");
        return -1;
    }
}

/**
 * 执行shell 执行chroot准备工作相关shell
 * @param exec
 * @return
 */
int _exec_shell(char* exec){
    int rv = system(exec);
    if (WIFEXITED(rv)){
        printf("subprocess exited, exit code: %d\n", WEXITSTATUS(rv));
        if (0 == WEXITSTATUS(rv))
        {
            // if command returning 0 means succeed
            printf("command succeed\n");
        }
        else
        {
            if(127 == WEXITSTATUS(rv))
            {
                printf("command not found\n");
                return WEXITSTATUS(rv);
            }
            else
            {
                printf("command failed: %s\n", strerror(WEXITSTATUS(rv)));
                return WEXITSTATUS(rv);
            }
        }
    }else{
        printf("subprocess exit failed");
        return -1;
    }
}