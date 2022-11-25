# 实验三报告

---

### 学号：PB20051061	姓名：牟真伟
---

## 3.3.1  IIR 滤波器设计

### (1)Chebyshev 高通数字滤波器

传递函数:
$$
H(Z)=\frac{0.0262   -0.1047z^{-1}  +  0.1570z^{-2}   -0.1047z^{-3} +   0.0262z^{-4}}{1+    1.5289z^{-1}  +  1.6537z^{-2} +   0.9452z^{-3}  +  0.2796z^{-4}}
$$
幅频特性曲线为:

![IIR_1](https://gitee.com/aweary/img/raw/master/img/202211242314857.jpg)

通带衰减和阻带衰减是满足要求

### (2)数字低通滤波器

```
B = 
    0.0179    0.1072    0.2681    0.3575    0.2681    0.1072    0.0179
A = 
    1.0000   -0.6019    0.9130   -0.2989    0.1501   -0.0208    0.0025
```


$$
H(Z)=\frac{0.0179   + 0.1072z^{-1} +   0.2681z^{-2}  +  0.3575z^{-3}   + 0.2681z^{-4}  +  0.1072z^{-5}   + 0.0179z^{-6}}{1+    -0.6019z^{-1}    +0.9130z^{-2}   -0.2989z^{-3} +   0.1501z^{-4}   -0.0208z^{-5}    +0.0025z^{-6}}
$$


![IIR_2](https://gitee.com/aweary/img/raw/master/img/202211242318796.jpg)





### (3)Butterworth 带通数字滤波器

```
B = 
    0.0002         0   -0.0014         0    0.0042         0   -0.0071         0    0.0071         0   -0.0042         0    0.0014         0   -0.0002
A = 
    1.0000    0.0000    3.7738    0.0000    6.5614   -0.0000    6.6518   -0.0000    4.2030   -0.0000    1.6437   -0.0000    0.3666   -0.0000    0.0359
```

$$
H(Z)=\frac{0.0002   -0.0014z^{-2}  +  0.0042z^{-4}   -0.0071z^{-6} +   0.0071z^{-8} -0.0042z^{-10} + 0.0014^{-12} -0.0002^{-14}}{1+3.7738z^{-2}  +  6.5614z^{-4}  + 6.6518  z^{-6} +   4.2030z^{-8} +1.6437z^{-10} + 0.3666^{-12} +0.0359^{-14}}
$$



![IIR_3](https://gitee.com/aweary/img/raw/master/img/202211242318836.jpg)

## 3.3.2   FIR 滤波器设计





![Hanning_15](https://gitee.com/aweary/img/raw/master/img/202211250921897.png)





![Hanning_45](https://gitee.com/aweary/img/raw/master/img/202211250922800.png)





![Blackman](https://gitee.com/aweary/img/raw/master/img/202211250922557.png)





![rec](https://gitee.com/aweary/img/raw/master/img/202211250922155.png)





![kaiser_4](https://gitee.com/aweary/img/raw/master/img/202211250942779.png)





![kaiser_6](https://gitee.com/aweary/img/raw/master/img/202211250943841.png)





![kaiser_8](https://gitee.com/aweary/img/raw/master/img/202211250943984.png)

## 3.3.3   滤波器特性分析

### (1)高通数字滤波器

![image-20221125183828298](https://gitee.com/aweary/img/raw/master/img/202211251840103.png)

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125201748024](https://gitee.com/aweary/img/raw/master/img/202211252017079.png) | ![image-20221125183914029](https://gitee.com/aweary/img/raw/master/img/202211251845941.png) |



| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125201846750](https://gitee.com/aweary/img/raw/master/img/202211252018795.png) | ![image-20221125184106993](https://gitee.com/aweary/img/raw/master/img/202211251846038.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125201955202](https://gitee.com/aweary/img/raw/master/img/202211252019257.png) | ![image-20221125184258537](https://gitee.com/aweary/img/raw/master/img/202211251847680.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125201911076](https://gitee.com/aweary/img/raw/master/img/202211252019123.png) | ![image-20221125184139019](https://gitee.com/aweary/img/raw/master/img/202211251847629.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125201932675](https://gitee.com/aweary/img/raw/master/img/202211252019722.png) | ![image-20221125184212513](https://gitee.com/aweary/img/raw/master/img/202211251847331.png) |



| IIR  | FIR  |
| ---- | ---- |
|      |      |

| IIR  | FIR  |
| ---- | ---- |
|      |      |

| IIR  | FIR  |
| ---- | ---- |
|      |      |

| IIR  | FIR  |
| ---- | ---- |
|      |      |


| IIR  | FIR  |
| ---- | ---- |
|      |      |












### (2)低通数字滤波器

![image-20221125185334787](https://gitee.com/aweary/img/raw/master/img/202211251853911.png)

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202043333](https://gitee.com/aweary/img/raw/master/img/202211252020382.png) | ![image-20221125185415768](https://gitee.com/aweary/img/raw/master/img/202211251854866.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202058007](https://gitee.com/aweary/img/raw/master/img/202211252020057.png) | ![image-20221125185432982](https://gitee.com/aweary/img/raw/master/img/202211251854069.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202123158](https://gitee.com/aweary/img/raw/master/img/202211252021206.png) | ![image-20221125185512588](https://gitee.com/aweary/img/raw/master/img/202211251855669.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202142856](https://gitee.com/aweary/img/raw/master/img/202211252021907.png) | ![image-20221125185529981](https://gitee.com/aweary/img/raw/master/img/202211251855058.png) |


| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202200642](https://gitee.com/aweary/img/raw/master/img/202211252022687.png) | ![image-20221125185545912](https://gitee.com/aweary/img/raw/master/img/202211251855994.png) |



### (3)带通数字滤波器

![image-20221125190614244](https://gitee.com/aweary/img/raw/master/img/202211251906364.png)

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202306097](https://gitee.com/aweary/img/raw/master/img/202211252023148.png) | ![image-20221125190630033](https://gitee.com/aweary/img/raw/master/img/202211251906113.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202322258](https://gitee.com/aweary/img/raw/master/img/202211252023308.png) | ![image-20221125190647502](https://gitee.com/aweary/img/raw/master/img/202211251906578.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202339713](https://gitee.com/aweary/img/raw/master/img/202211252023759.png) | ![image-20221125190702907](https://gitee.com/aweary/img/raw/master/img/202211251907985.png) |

| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202353282](https://gitee.com/aweary/img/raw/master/img/202211252023334.png) | ![image-20221125190720127](https://gitee.com/aweary/img/raw/master/img/202211251907210.png) |


| IIR                                                          | FIR                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20221125202406206](https://gitee.com/aweary/img/raw/master/img/202211252024252.png) | ![image-20221125190744799](https://gitee.com/aweary/img/raw/master/img/202211251907887.png) |

## 3.3.4   滤波器的实际运用

![image-20221125200427188](https://gitee.com/aweary/img/raw/master/img/202211252004254.png)



![image-20221125200112155](https://gitee.com/aweary/img/raw/master/img/202211252001216.png)





![image-20221125200140286](https://gitee.com/aweary/img/raw/master/img/202211252001333.png)

![image-20221125200214631](https://gitee.com/aweary/img/raw/master/img/202211252002694.png)



![image-20221125200252127](https://gitee.com/aweary/img/raw/master/img/202211252002173.png)





![image-20221125200310603](https://gitee.com/aweary/img/raw/master/img/202211252003647.png)



![image-20221125200347798](https://gitee.com/aweary/img/raw/master/img/202211252003846.png)

![image-20221125200444052](https://gitee.com/aweary/img/raw/master/img/202211252004105.png)







![image-20221125201456853](https://gitee.com/aweary/img/raw/master/img/202211252014910.png)
