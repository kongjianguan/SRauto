#include<iostream>
#include<time.h>
#include<stdio.h>
#include<stdlib.h>
#include<fstream>
#include<cstring>
#include<string>
#include<unistd.h>
using namespace std;


#include <chrono>
#include <thread>
bool run_state=false;
void ensleep(int seconds) {
    std::this_thread::sleep_for(std::chrono::seconds(seconds));
}


    time_t nowtime;
int cWeekDay(int y,int m, int d)
{
    if(m==1||m==2)
    {
        m+=12;
        y--;
    }
    int iWeek=(d+2*m+3*(m+1)/5+y+y/4-y/100+y/400)%7;
    return iWeek+1;
}
bool echo(const char* content,int ioway,const char* address){
    ofstream ofs;
    switch(ioway)
    {
    case 1:ofs.open(address,ios_base::trunc);
    case 2:ofs.open(address,ios_base::app);
    }
    if(!ofs.is_open())
    {
        return false;
    }
    ofs<<content<<endl;
    ofs.close();
    return true;
}

int readfile()
{
    ifstream run;
    system("chmod 777 /sdcard/Android/SRauto/run.txt");
    run.open("/sdcard/Android/SRauto/run.txt");
    if(run.is_open())
    {
        char ch;
        run.get(ch);
        run.close();
        return int(ch)-48;
    }
    return 0;
}
int checktime()
{
    time_t nowtime;
    time(&nowtime);
    tm nt=*localtime(&nowtime);
    if(nt.tm_hour<=11 && nt.tm_hour>=10){
        return 1;
    }
    else return 0;
    
}
void SysAction(){
    if(run_state==true){
    system("chmod 777 ./unlock.sh");
    system("sh ./unlock.sh");
    ofstream logfile;
    logfile.open("/sdcard/Android/SRauto/SRauto.txt",ios_base::out|ios_base::app);
    time_t nowtime;
    time(&nowtime);
    logfile<<endl<<ctime(&nowtime)<<"完成一次";
    system("echo 已自动清空日志>/sdcard/Android/SRauto/SRauto.txt");
    }
}
int main()
{   
    time(&nowtime);
    tm nt=*localtime(&nowtime);
    while(1){
    system("mkdir -m 777 /sdcard/Android/SRauto/SRauto.txt");
    system("chmod 777 ./SRauto");
	int run=readfile();
	system("chmod 777 /sdcard/Android/SRauto/SRauto.txt");
    time_t nti;
    time(&nti);
    tm ntime=*localtime(&nti);
	int der = ntime.tm_wday;
    time(&nowtime);
    nt=*localtime(&nowtime);
	if(run==3)
	{
	   return 0; 
	}
	else if(run==1)
	{
        if(checktime() && der<6 && der>0)
        {
           SysAction();
        }
        else{
            ofstream loger;
            loger.open("/sdcard/Android/SRauto/SRauto.txt",ios_base::out|ios_base::app);
            loger<<endl<<ntime.tm_year+1900<<"年"<<ntime.tm_mon+1<<"月"<<ntime.tm_mday<<"日"<<ntime.tm_hour<<":"<<ntime.tm_min<<":"<<ntime.tm_sec<<"周"<<ntime.tm_wday<<"--module normal"<<checktime();
            loger.close();
    }
    }
    else if(run==2)
    {
        SysAction();
    }
    if(nt.tm_hour==11){
    run_state=false;
    }
    ensleep(60);
    }
}




