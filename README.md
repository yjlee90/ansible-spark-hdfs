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



# 사용법
1. inventory 폴더 아래 hosts에 IP, hostname 입력
2. set_ssh.sh  실행


# template 변경사항
- spark-env.sh.j2 
  - spark-master-ip 주소 변경 필요


# 안되는 것
21.05.28
HDFS datanode 연결 안됨
spark worker  연결 안됨


# inventory
Category 변경 X

# Role 
1. deploy_init 
- ansible deploy server에서 다른 노드들에 접속할 수 있도록 Key를 등록시키는 Role

2. Common
- 모든 서버에 `/etc/hosts` 에 IP 및 호스트 등록, Master -> Workes 에 접근할 수 있도록 key 등록,
- Java openjdk 1.8 설치
- [ ] environment.tar.gz, alternatives 를 이용하여 Python 설치

