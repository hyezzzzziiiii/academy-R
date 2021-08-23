# 데이터 로딩(가져오기) - csv
# read.csv("파일명")
# read.delim("파일명", sep=",")
# read.table("파일명", sep=",")

# 데이터 로딩(가져오기) - tsv
# read.table("파일명", sep="\t")

# 데이터 로딩(가져오기) - 특정 구분자
# read.delim("파일명", sep="특정 구분자")

# 실습 파일 AWS_sample.txt 파일 불러 오기
aa = read.delim("AWS_sample.txt", sep="#", 
                        stringsAsFactors = FALSE)
# stringsAsFactors : 텍스트로 읽어오는 데이터는 연속값인지 
# 이산값인지 설정 False -> 이산값으로 하지 않는다는 뜻입니다
# "1" , "3" , "5" , "7" 의 데이터는 이산값이냐 연속 값이냐에 따라
# 차트에 표기모양이 달라집니다(연속값은 선형, 이산값은 막대형)
# 이미 서로 연관성이 없는 텍스트들로 이루어진 데이터라면
# stringsAsFactors = FALSE 설정하고,
# stringsAsFactors = TRUE 를 넣어서 연속값으로 인식될 필요가 있
# 경우에만 TRUE 를 사용합니다
# 1,2,3,4  이값을 서로 독립적은 이산값으로 사용하고자 할때 TRUE


# 파일을 불러오는동안 에러가 난다면
# 대소문자 구분을 확인
# 괄호의 짝이 맞는지 확인
# 파일이 작업폴더 아닌 다른 곳에 있는지 확인 합니다

# 불러올 파일이 작업 폴더에 없고 다른 폴더에 있는 경우
bb = read.csv(file.choose(), header=TRUE)

# 읽어온 데이터 전체 확인
aa

# head : 읽어온 데이터의 상단 6개의 행을 보여줍니다
head(aa)
# head 를 이용한 행갯수 조정
head(aa, 3)
head(aa, n=3)

# 하단 데이터 확인
tail(aa)
tail(aa, 3)

# 불러온 데이터의 구조 및 기술통계
# str 은 string 의 약자가 아니고, structure 의 약자임임
str(aa)   # info
summary(aa)  # descirbe


# 행의 갯수
nrow(aa)
# 열의 갯수
ncol(aa)
# 행과 열의 갯수 : 파이선의 shape 와 같은 기능
dim(aa)

# 각 열의 이름
colnames(aa)
