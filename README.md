# Ansible-spark-hdfs
## 개요 
- ansible을 이용하여 spark-yarn-hdfs 클러스터를 구성한다.

## 프로그램 버전
|프로그램|버전|
|--------|---|
|Java|openjdk-1.8.291|
|Hadoop|2.10.1|
|Spark|2.4.7|
|Python|3.6.9|
|Ansible|2.10.9|

<br>

## Ansible Role
1. common
2. install_hdfs
3. install_spark
4. install_pyspark



## Ansible Playbook 순서
1. Deploy 서버 설정
   - host 파일 (`initialize/` 내에 설정)
   - `set_ssh.sh` 실행
   - `inventory/multinode` 설정
  
2. Common role
    - deploy 서버 ssh Key 등록 -> 전체서버
    - Master 서버 ssh key 등록 -> Slave 서버
    - `/etc/hosts` 파일 등록
    - java 설치 파일 복사 및 압축 해제하여 설치
    - `update-alternatives`를 이용하여 java 설정
3. HDFS 설치
    - hadoop 설치 파일 복사 및 압축 해제
    - hadoop 관련 폴더(name, data 등) 생성
    - hadoop 설정 파일 복사 및 구성(templates)

4. Spark 설치
    - Spark 설치 파일 복사 및 압축 해제
    - Spark 관련 폴더(name, data 등) 생성
    - Spark 설정 파일 복사 및 구성(templates)
    - Spark 필요 jar 파일 복사(templates)

5. PySpark 설치
    - environment.tar.gz 전체 복사 후 압축 해제
    - `update-alternatives`를 이용하여 기본 python 경로 변경


## TODO
- [X] localhost 설치
  - [x] Common 설치
      - [X] Java 설치
      - [x] SSH 설정
  - [x] HDFS 설치
      - [x] Hadoop 설치
      - [x] HDFS 설정
      - [x] Yarn 설정 
      - [x] Start, stop 관련 쉘스크립트 만들기, Playbook 끝나면 시작하기
      - [x] Playbook 시작 전에 전체 JOB stop 하기
  - [X] Spark 설치
  - [x] JOB 테스트
- [x] Cluster 설치 
  - [x] Common 설치
  - [x] hdfs 설치
  - [x] spark 설치
  - [x] PySpark 설치
    - [x] S
  - [x] 서비스 제어 관련 playbook
    - [x] start, stop, restart playbook
    - [x] configuration 변경 적용 playbook




## 사용법
1. `initialize/hosts`에 `<IP> <Hostname>` 입력
2. `set_ssh.sh`  실행
3. `ansible-playbook -i inventory/multinode install.yml -vv` -> `install.sh` 실행


## 문제점
- master에 known_host 등록이 자동으로 되지 않음
  - 처음에 master 서버에 접속하여 서비스 start를 수동으로 하면서 key 등록을 시도해야함.
  
- user에 대한 config.yml 정리 필요