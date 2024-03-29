# 实验一报告

---

### 学号：PB20051061	姓名：牟真伟
---

## 1.3.2   理想采样信号序列的特性分析

以不同采样率进行采样得到的采样信号和频谱特性为：

![image-20221113210908934](https://gitee.com/aweary/img/raw/master/img/202211162320947.png)

由上图可以看出，随着采样频率的下降，采样信号的各个频率分量之间的界限不在明显，出现频谱混叠现象。因为采样频率小于2倍信号最大频率，不满足奈奎斯特采样定理。

## 1.3.3   典型信号序列的特性分析

### 1.3.3.2 观察高斯序列的时域和频域特性

- p=8，改变q 的值，使q 分别等于2，4，8

![image-20221113210954113](https://gitee.com/aweary/img/raw/master/img/202211162320889.png)

当p保持不变，随着q增大，时域波形变宽且变得平滑，而频域波形变陡峭，频谱分量变少，不易发生混叠

高斯序列中q表示时域波形的陡峭程度

- 固定q=8，
  改变p，使p 分别等于8，13，14

![image-20221113211007835](https://gitee.com/aweary/img/raw/master/img/202211171636450.png)

当q保持不变，随着q增大时，时域波形的中心整体向右移，q表示时域波形峰值的位置。

p=13,p=14时由于时域窗口限制导致一部分时域分量丢失，频域波形随p的增大频率分量增多，容易产生混叠

### 1.3.3.3 观察衰减正弦序列的时域和幅频特性





![image-20221113211026173](https://gitee.com/aweary/img/raw/master/img/202211162321190.png)

f相当于对以采样频率归一化后的信号频率，当$f<0.5$时满足奈奎斯特采样准则，频谱混叠较弱

当$f=0.5625$时不满足奈奎斯特采样准则，频谱混叠明显,$f=0.5625$和$f=0.4375$属于镜像频率,二者频谱相同.

### 1.3.3.4 观察三角波序列和反三角波序列的时域和幅频特性

![image-20221113211044781](https://gitee.com/aweary/img/raw/master/img/202211162321873.png)

​	N=8的正三角序列和反三角序列频谱相同,因为DFT要原信号做周期延拓后再取主值部分,而正三角序列和反三角序列做完周期延拓后,二者只有一定的延时关系,二者频域只有相位不同,频谱相同.

​	补零后,二者时域周期延拓不再相同,频谱也不同,反三角序列补零后时域再N=8处出现了突变,其频率分量增多.

​	补零使得谱线增多,频谱看上去更光滑,但频谱形状不变,时域补零只是频域插值,并不能提高频率分辨率.

### 1.3.3.5 *  选作内容

![image-20221113211058198](https://gitee.com/aweary/img/raw/master/img/202211162334118.png)

​	信号未加噪声时,频率分量较少,频谱混叠不严重.

​	信号加入噪声后,频率分量增多,之前占主要成分的频率分量变得不再占优势.改$\alpha=0.01$后,降低了原信号得衰减,使得原信号中的频率成分再加入噪声后仍然分得清.改$f=0.4375$后,原信号得频率成分改变,再加入噪声后,也能略微看到频率分量得改变.

## 1.3.4   离散信号、系统和系统响应的分析

### 1.3.4.2 离散信号、系统和系统响应的分析

- (1)

![image-20221117172906236](https://gitee.com/aweary/img/raw/master/img/202211172046071.png)

​	时域上,由于输入为单位冲激,所以系统得输出为其单位冲激响应,输出频谱即为系统频谱

- (2)

![image-20221117172930906](https://gitee.com/aweary/img/raw/master/img/202211172046940.png)

​	卷积得两个信号得长度均为10,因此卷积后得信号长度应为10+10-1=19,与实验结果相符.由于卷积得两个信号均为长度为10的矩形窗,卷积结果应为以10为对称轴的长度为19的序列![image-20221117172945240](https://gitee.com/aweary/img/raw/master/img/202211172046805.png)

​	$x_c(n)$长度改为5后卷积结果的长度变为5+10-1=14

- (3)

![image-20221117194936324](https://gitee.com/aweary/img/raw/master/img/202211172046918.png)

![image-20221117195001253](https://gitee.com/aweary/img/raw/master/img/202211172046838.png)

改变$\alpha$为0.1,减小衰减速率,输入信号和输出信号中特定频率分量更加突出.

![image-20221117195513146](https://gitee.com/aweary/img/raw/master/img/202211172047660.png)

改变$\Omega_0$后输入信号和输出信号中的主要频率成分均做相应改变.

### 1.3.4.3 卷积定律的验证

![image-20221113211210719](https://gitee.com/aweary/img/raw/master/img/202211162334682.png)

左图为DFT后频域直接相乘，右图为时域做圆周卷积后再做DFT,可以看出二者结果完全相同，满足卷积定律。

## 用Python进行数字信号处理实验项目的时候常用的函数及其功能

使用Python进行数字信号处理实验项目时用到的库主要为numpy,matplotlib,scipy

- scipy
  - fft()	实现fft函数
- matplotlib
  - subplot()	用于绘制多个子图
  - stem()       用于绘制茎叶图
  - plot()       用于绘绘图

- numpy
  - dot()	实现点积函数
  - abs()    取向量幅度,计算幅频响应
  - linspace()  生成等间隔点,用于绘制连续图
  - convolve()   实现线性卷积

## 实验总结

​	本次实验通过对常见信号和系统的时域和频域分析,对离散信号与系统的一些基本特性进行了分析和总结,再对时域的无线长信号进行分析时,首先要对其加窗进行截断,该过程会造成频谱泄露现象,在对有限长信号进行采样时,采样频率小容易造成严重的频谱混叠现象,要选取合适的采样频率.对采样得到的离散信号进行DFT变换时,会产生栅栏效应,在时域补零可以减小栅栏效应,但无法改变频率分辨率,要改变频率分辨率,要延长时域采样的总长度.对于LTI系统,系统单位冲激响应和输入信号的圆周卷积的DFT,与系统单位冲激响应和输入信号的DFT的卷积相同.
