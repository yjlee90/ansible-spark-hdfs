## 프로젝트
- Ansible-spark-hdfs
- ansible을 이용하여 spark-yarn-hdfs 클러스터를 구성한다.


## 버전정보
|프로그램|버전|
|--------|---|
|Java|openjdk-1.8.291|
|Hadoop|2.10.1|
|Spark|2.4.7|
|Python|3.6.9|
|Ansible|2.10.9|

<br>
## TODO
- [ ] localhost 설치
  - [x] Common 설치
      - [X] Java 설치
      - [ ] SSH 설정
  - [x] HDFS 설치
      - [x] Hadoop 설치
      - [x] HDFS 설정
      - [x] Yarn 설정 
      - [ ] Start, stop 관련 쉘스크립트 만들기, Playbook 끝나면 시작하기
      - [ ] Playbook 시작 전에 전체 JOB stop 하기
  - [X] Spark 설치
  - [ ] JOB 테스트
- [ ] Cluster 설치 
  - [ ] Common 설치
  - [ ] hdfs 설치
  - [ ] spark 설치


# ansible 설치
`pip3 install ansible`









