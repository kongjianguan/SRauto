#include<iostream>
#include<time.h>
#include<stdio.h>
#include<stdlib.h>
#include<fstream>
#include<cstring>
#include<string>
#include<unistd.h>
using namespace std;

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
    if(nt.tm_hour==10){
        return 1;
    }
    else return 0;
}
void SysAction(){
    system("chmod 777 ./unlock.sh");
    system("sh ./SRauto.sh 1");
    ofstream logfile;
    logfile.open("/sdcard/Android/SRauto/SRauto.txt",ios_base::out|ios_base::app);
    time_t nowtime;
    time(&nowtime);
    logfile<<endl<<ctime(&nowtime)<<"完成一次，模块休眠约一小时";
    sleep (3600);
    system("echo 已自动清空日志>/sdcard/Android/SRauto/SRauto.txt");
}
void sed(string keyword,string filePath) {
    std::ifstream inputFile(filePath);
    if (!inputFile.is_open()) {
        std::cout << "Unable to open file: " << filePath << std::endl;
        return;
    }

    std::string line;
    std::ofstream outputFile(filePath + ".tmp"); // 创建一个临时文件
    while (std::getline(inputFile, line)) {
        if (line.find(keyword) == std::string::npos) {
            outputFile << line << std::endl; // 将不包含关键词的行写入临时文件
        }
    }
    
    inputFile.close();
    outputFile.close();
    
    std::remove(filePath.c_str()); // 删除原始文件
    std::rename((filePath + ".tmp").c_str(), filePath.c_str()); // 将临时文件重命名为原始文件
}

int main()
{   
    ofstream ofs;
    sed("SRautoelf","./state.txt");
    ofs.open("./state.txt",ios_base::app);
    if(!ofs.is_open()){
        system("chmod 777 ./state.txt");
        ofs.open("./state.txt",ios_base::app);
    }
    ofs<<"SRautoelf "<<getpid()<<endl;
    ofs.close();
    system("if [ ! -d /sdcard/Android/SRauto ];then mkdir -m 777 /sdcard/Android/SRauto; fi;");
    system("chmod 777 ./SRauto");
	int run=readfile();
	system("chmod 777 /sdcard/Android/SRauto/SRauto.txt");
    time_t nti;
    time(&nti);
    tm ntime=*localtime(&nti);
	int der = ntime.tm_wday;
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
            ofs.open("/sdcard/Android/SRauto/SRauto.txt",ios_base::out|ios_base::app);
            ofs<<endl<<ntime.tm_year+1900<<"年"<<ntime.tm_mon+1<<"月"<<ntime.tm_mday<<"日"<<ntime.tm_hour<<":"<<ntime.tm_min<<":"<<ntime.tm_sec<<"周"<<ntime.tm_wday<<"--module normal"<<checktime();
            ofs.close();
    }
    }
    else if(run==2)
    {
        SysAction();
    }
    sleep(100);
    system("nohup ./SRauto&");
    return 0;
}