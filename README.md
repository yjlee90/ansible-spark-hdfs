# 프로젝트
- Ansible-spark-hdfs
- ansible을 이용하여 spark-yarn-hdfs 클러스터를 구성한다.


# 버전정보
Java
- openjdk-1.8.291

hadoop
- 2.10.1

spark
- 2.4.7

python
- 3.6.9(ubuntu 18.04 기본)
# TODO
- [x] Common 설치
    - [ ] Java 설치
    - [ ] SSH 설정
- [x] HDFS 설치
    - [x] Hadoop 설치
    - [x] HDFS 설정
    - [x] Yarn 설정 
    - [ ] Start, stop 관련 쉘스크립트 만들기, Playbook 끝나면 시작하기
    - [ ] Playbook 시작 전에 전체 JOB stop 하기
- [ ] Spark 설치
- [ ] JOB 테스트

# ansible 설치
`pip3 install ansible`









