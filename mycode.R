head(iris,10)
plot()


# Git bash 에서 수정을 커밋하고 푸쉬하기
cat mycode.R
git pull # 풀한다
git add . # 현재 디렉토리에서 수정된 상황 모두 반영
git commit -m "my message" # 커밋한다
git push # 푸쉬한다


#
anscombe
str(anscombe)

anscombe[, c("x1","y1")]

df <- anscombe

par(mfrow=c(2,2))

plot(df$x1, df$y1, pch=19, col="tomato")
abline(lm(y1~x1, data=df),col="blue")
plot(df$x2, df$y2, pch=19, col="tomato")
abline(lm(y2~x2, data=df),col="blue")
plot(df$x3, df$y3, pch=19, col="tomato")
abline(lm(y3~x3, data=df),col="blue")
plot(df$x4, df$y4, pch=19, col="tomato")
abline(lm(y4~x4, data=df),col="blue")

par(mfrow=c(1,1)
    
    
# 18 데이터 시각화 실습
install.packages("tidyverse")
library(tidyverse)
str(mpg)
head(mpg)
p <- ggplot(data=mpg,
            mapping=aes(x=displ, y=hwy))
p # 배경화면이므로 +하여 그래프 갖다붙이기

p+geom_point()
p+ geom_point(mapping=aes(color=class))


head(colors(),10)
colors()


p+ geom_point(mapping=aes(color=class, size=class,
                          shape=class, alpha=0.3))

p+geom_point(color="tomato") +
  facet_wrap(~class, nrow=2)

p+geom_point(color="orange") +
  facet_grid(drv~cyl)


# 
table(mpg$drv)
?mpg
table(mpg$cyl) # 실린더 개수
par(mfrow=c(1,1))
barplot(table(mpg$cyl), col="steelblue")


p + geom_point(color = "steelblue") +
  geom_smooth(color="tomato") # 값에 대한 추세선을 그림림


p+ geom_point(
    mapping=aes(color=class))+
  geom_smooth(color="tomato")


data("diamonds")
str(diamonds)



p <- ggplot(data = diamonds)
p + geom_bar(mapping = aes(x = cut),
           fill = "steelblue")
p + stat_count(mapping = aes(x = cut),
               fill = "steelblue")



p + geom_bar(mapping = aes(x = cut,
                           fill = clarity))
             
p + geom_bar(mapping = aes(x = cut,
                           fill = clarity), # 색을 클래스로 줌
             position = "fill")  # 막대를 전부 채움
p + geom_bar(mapping = aes(x = cut,
                           fill = clarity),
             position = "dodge")


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ,
                           y = hwy,
                           color = class),
             position = "jitter") # 산점도

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ,
                 y = hwy,
                 color = class,
                 size = class),
             position = "jitter")


 # 박스플롯
p <- ggplot(data = mpg,
            mapping = aes(x=class, y=hwy))
p + geom_boxplot(fill = "lightyellow")

p + geom_boxplot(fill = "lightyellow") +
  coord_flip()


p <- ggplot(data = diamonds)
p + geom_bar(mapping = aes(x = cut,
                           fill = clarity),position = "fill") +
  coord_flip()


p <- ggplot(data = diamonds,
            mapping = aes(x=cut, fill=cut))
p + geom_bar(show.legend=F,width=1) +
  labs(x=NULL,y=NULL) +
  theme(aspect.ratio=1) +
  coord_polar() # 극좌표계


world <- map_data("world")
ggplot(world, aes(long, lat, group = group)) +
  geom_polygon(fill = "lightyellow", color="blue")