bar_df = data.frame( obs = 1:10,
                     var_1 = rep( c("A","B","C"), 10),
                     value = sample(1:100, size=10),
                     stringsAsFactors = FALSE  )
bar_df
library("ggplot2")

# 평범한막대 그래프
ggplot(data=bar_df, aes( x=obs, y=value)) + 
  geom_bar(stat="identity")

# 막대그래프 색상 적용 1
ggplot(data=bar_df, aes( x=obs, y=value,
                         color=value)) + 
  geom_bar(stat="identity")

# 막대 그래프에 색상 적용 2
ggplot(data=bar_df, aes( x=obs, y=value,
                         fill=value)) + 
  geom_bar(stat="identity")

# 막대 그래플에 색상 적용 3
ggplot(data=bar_df, aes( x=obs, y=value,
                         fill=as.factor(value))) + 
  geom_bar(stat="identity")

# 막대 그래플에 색상 적용 4
ggplot(data=bar_df, aes( x=as.factor(obs), 
                         y=value,
                         fill=as.factor(value))) + 
  geom_bar(stat="identity")

# 막대 그래프의 position
ggplot(data=bar_df, aes( x=as.factor(obs), 
                         y=value,
                         fill=as.factor(value))) + 
  geom_bar(stat="identity", position="stack")


ggplot(data=bar_df, aes( x=as.factor(obs), 
                         y=value,
                         fill=as.factor(value))) + 
  geom_bar(stat="identity", position="dodge")


ggplot(data=bar_df, aes( x=var_1, 
                         y=value,
                         fill=as.factor(value))) + 
  geom_bar(stat="identity", position="dodge")


bar_df = data.frame( obs=1:10,
           var=rep( c("A", "B", "C"), length.out=10),
           value=sample(1:100, size=10),
           stringsAsFactors = FALSE)
bar_df

#barplot 의 또다른 예(geom_bar->geom_col)
ggplot(data=bar_df, aes(x=obs, y=value)) + 
  geom_col()
ggplot(data=bar_df, aes(x=obs, y=value,
                        fill=value)) + 
  geom_col()
ggplot(data=bar_df, aes(x=obs, y=value,
                        fill=as.factor(value))) + 
  geom_col(size=3)

# 추가옵션 : 축 눈금 값들의 사이즈 조정
ggplot(data=bar_df, aes(x=obs, y=value,
                        fill=as.factor(value))) + 
  geom_col(size=8) +
  theme(axis.text = element_text(size=15))

ggplot(data=bar_df, aes(x=var, y=value,
                        fill=as.factor(value))) + 
  geom_col(size=5, position="dodge") +
  theme(axis.text = element_text(size=15))



# 색상 설정 #1
color_df = data.frame( obs=1:10,
          var=rep( c("A", "B", "C"), length.out=10),
          value=sample(1:100, size=10),
          stringsAsFactors = FALSE)
color_df

# 컬럼 이름이 아닌 색상이름을 지정하면 아래와 같이
# 지정되지 않은 색이 표시됩니다
ggplot(data=color_df, aes(x=var,
                          y=value,
                          fill="blue")) + 
  geom_bar(stat="identity", position="stack")

# aes 밖에 색상설정은 전혀 적용되지 않습니다
ggplot(data=color_df, aes(x=var,
                          y=value), fill="blue") + 
  geom_bar(stat="identity", position="stack")

# geom_bar 안에 fill 값을 지정해야 색이 적용됩니다
ggplot(data=color_df, aes(x=var, y=value) ) + 
  geom_bar(stat="identity", position="stack", 
           fill="blue")
ggplot(data=color_df, aes(x=var, y=value) ) + 
  geom_bar(stat="identity", position="stack", 
           fill="blue", alpha=0.3)


# 색상 설정 #2
ggplot(data=color_df, aes( x=obs,
                           y=value,
                           color=value)) + 
  geom_line(size=3)

ggplot(data=color_df, aes( x=obs,
                           y=value)) + 
  geom_line(size=3, color="blue")

# var 값으로 그룹을 설정 & 그룹에 색깔 설정
# 회색 톤의 색깔 설정
ggplot(data=color_df, 
       aes(x=as.factor(obs),
           y=value,
           group=var,
           color=var)) + 
  geom_line(size=3) + 
  scale_color_grey(start=0.2, end=0.8)
# R 프로그램이 제공하는 팔레트 번호로 설정
ggplot(data=color_df, 
       aes(x=obs, y=value,
           group=var,
           color=var)) + 
  geom_line(size=3) + 
  scale_color_brewer(palette=15) #1~18번까지사용
# 내가 설정한 각각의 색을 적용
ggplot(data=color_df, 
       aes(x=obs, y=value,
           group=var,
           color=var)) + 
  geom_line(size=3) + 
  scale_color_manual(values=c("A"="red",
                              "B"="blue",
                              "C"="green"))

