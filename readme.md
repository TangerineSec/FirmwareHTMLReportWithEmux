# 固件分析检测报告预览：

这个报告花费时间3小时，使用软件emua软件进行了检测，由于检测每个固件文件系统是检测一个完整Linux系统，包括了php文件分析，二进制文件分析，敏感文件泄露，strcat字符串处理、命令注入、格式化字符串等高危函数检测，所以每次检测到出HTML报告的时间是3小时以上，下面是每个具体品牌和型号的检测结果，可以提供随时的预览和查看。

| 品牌             |      |      |
| ---------------- | ---- | ---- |
| 型号             |      |      |
| 版本             |      |      |
| 检测情况         |      |      |
| 固件能否模拟仿真 |      |      |
| 固件下载地址     |      |      |

打开报告方式，从文件夹下的html-report进入，查看目录下的index.html文件。从报告中可以看出检测的存储路径为：，

![image-20240116215237477.png](https://githubwiki.oss-cn-shanghai.aliyuncs.com/img/typroa/image-20240116215237477.png)

![image-20240116214038784.png](https://githubwiki.oss-cn-shanghai.aliyuncs.com/img/typroa/image-20240116214038784.png)

## 电脑检测资源消耗情况

当电脑检测固件的时候，我为检测环境分配了8核处理器（所能分配最多的），VMware软件的vmx进程此时为计算型任务，很消耗CPU性能，下图显示了在检测运行期间cpu占用状态，占用百分比极高，此时已经运行了

![image-20240116215825457.png](https://githubwiki.oss-cn-shanghai.aliyuncs.com/img/typroa/image-20240116215825457.png)

同时，CPU长期处于100%的占用状态，如下图所示。由于内存还算足够，一般占用23GB左右，所以只能打开word编辑类软件和看PDF书籍，对于网络流量传输和计算型任务几乎无法完成，同时在本页面详细的给出测试规格参数，所以检测报告也是比较有价值。

![image-20240116220027972.png](https://githubwiki.oss-cn-shanghai.aliyuncs.com/img/typroa/image-20240116220027972.png)

## 检测结果HTML预览

打开每个检测报告目录下的html-report文件夹，打开文件夹中的index.html，是每个报告的首页。下面的为固件报告的要点说明，可进行深入探索，同时给出了多个固件检测报告方便预览和对比查看。

![1705416218683.png](https://githubwiki.oss-cn-shanghai.aliyuncs.com/img/typroa/1705416218683.png)

![1705416419061.png](https://githubwiki.oss-cn-shanghai.aliyuncs.com/img/typroa/1705416419061.png)

![1705416378014.png](https://githubwiki.oss-cn-shanghai.aliyuncs.com/img/typroa/1705416378014.png)
