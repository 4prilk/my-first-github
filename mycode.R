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
plot(df$x1, df$x2, pch=19, col="tomato")