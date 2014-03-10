height <- c(58,59,60,61,62,63,64,65,66,67)


weight <- c(115,116,117,118,119,120,121,122,123,124)


print(mean(height)) #平均

print(sd(weight)) # 标准方差

print(cor(weight, height)) #线性相关系数

plot(weight, height) #图形表示
