# mc-infra-connector

[![GoDoc](https://godoc.org/github.com/m-cmp/mc-infra-connector?status.svg)](https://pkg.go.dev/github.com/m-cmp/mc-infra-connector@master)&nbsp;&nbsp;&nbsp;
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/m-cmp/mc-infra-connector/blob/master/LICENSE)


The mc-infra-connector, based on [Cloud-Barista's CB-Spider](https://github.com/cloud-barista/cb-spider), 
<br> is a dynamic multi-cloud integration framework
that offers unified APIs to connect and control multi-cloud resources and services dynamically.

---

# 멀티 클라우드 동적 연동 프레임워크

### [명칭/개발방안]
- #### 공식명칭: 멀티 클라우드 동적 연동 프레임워크
- #### 코드네임: mc-infra-connector
- #### 개발방안: Cloud-Barista 플랫폼의 CB-Spider 프레임워크 기반 CMP 기능 확장 및 개선
  - #### Cloud-Barista: 멀티 클라우드 서비스 공통 플랫폼 (https://cloud-barista.github.io)
- #### 개발위치: CB-Spider (https://github.com/cloud-barista/cb-spider)

<br>

### [개요]
- #### 멀티 클라우드 자원 및 서비스에 대한 단일 API, 공통 제어 방식 제공
- #### 개별 클라우드 자원 및 서비스 대상의 개별 API, 개별 제어 방식 제공
- #### 신규 클라우드에 대한 동적 확장, 특정 클라우드 자원에 대한 개별 확장 제공
  - #### 동적 확장: 드라이버 공통 API를 준수하는 클라우드 동적 연동
  - #### 개별 확장: 특정 클라우드 자원 및 기능의 지원을 위한 개별 API 기반 동적 연동

<br>

<p align="center">
<img width=850 src="https://github.com/m-cmp/mc-infra-connector/assets/46367962/3fb7ccba-9a0b-49d6-8838-e5ab3e0a9eac">
<br>
</p>

<br>

### [기능]
- #### 다양한 사용자 인터페이스 제공
  - #### REST API, CLI, Web 제공
- #### 멀티 클라우드 연결 정보 통합 등록 및 관리 제공
  - #### 클라우드 드라이버 정보, 크리덴셜 정보 등

<br>

<p align="center">
<img width=500 src="https://github.com/m-cmp/mc-infra-connector/assets/46367962/fb37d27e-51fc-4112-b0bd-69d51aa1cc8d">
<br>
<b><멀티 클라우드 동적 연동 프레임워크 제공 정보 및 인프라 개요></b>
</p>

- #### 멀티 클라우드 카달로그 정보 제공
  - #### 프레임크가 제공하는 자원 및 서비스의 카달로그 정보
  - #### VPC, VM, MariaDB 등 사용 가능한 서비스 정보
- #### 멀티 클라우드 메타 정보 제공
  - #### 자원 및 서비스 요청을 위해 필요한 정보
  - #### VM 이미지 정보, VM Spec 정보, VM 가격 정보 등
- #### 멀티 클라우드 운영 지원 정보 제공
  - #### 자원 및 서비스 운영을 위해 필요한 정보
  - #### 모니터링 정보, 이벤트 정보 등
- #### 멀티 클라우드 네트워크 및 스토리지/데이터 관련 자원 생성 및 제어
- #### 멀티 클라우드 가상 머신 인프라 생성 및 제어
- #### 멀티 클라우드 컨테이너 인프라(Kubernetes) 생성 및 제어
- #### 멀티 클라우드 드라이버 통합 관리 저장소 제공
  - #### 클라우드 드라이버 등록 및 관리 
  - #### CB-Spider 운영 서버에 클라우드 드라이버 다운로드/설치 제공
  - #### 빠른 개발 및 편리한 시험 환경 제공을 위한 Mock 드라이버 제공

<br>

### [대상 클라우드 후보]

- 목록
    | CSP
  -- | --
  1 | AWS
  2 | Azure
  3 | GCP  
  4 | Alibaba
  5 | Tencent
  6 | IBM
  7 | OpenStack  
  8 | NCP
  9 | NHN  
  10 | KT
  

<br>

### [대상 자원/서비스 후보]

- 목록

  분류 | 자원 및 서비스
  -- | --
  카달로그 정보 | M-CMP Service Catalog
  메타 정보 | Public Image, VM Spec, Price 등
  운영지원정보 | Monitoring, Event/Alarm 등
  네트워크 | VPC/Subnet, Security Group, Public IP, NLB 등
  VM 인프라 | VM, Keypair, Disk, Snapshot 등
  Container 인프라 | Kubernetes
  스토리지/데이터 | FS, DBMS 등
  
  &nbsp;&nbsp;※ Notice: 자원 및 서비스의 분류는 재정의 될 수 있음

<br>

### [소스 다운로드 방법]
- #### 현 저장소에서 받는 방법
  - 최신 소스 받기
    ```
    git clone --recursive https://github.com/m-cmp/mc-infra-connector.git
    ```
  - 태깅 소스 받기
    ```
    git clone --recursive https://github.com/m-cmp/mc-infra-connector.git --branch v0.4.0
    ```
- #### CB-Spider 저장소에서 받는 방법
  - 최신 소스 받기
    ```
    git clone https://github.com/cloud-barista/cb-spider.git
    ```
  - 태깅 소스 받기
    ```
    git clone https://github.com/cloud-barista/cb-spider.git --branch v0.11.2
    ```

<br>

### [설치 및 활용 가이드]
- #### 설치 방법  
  - #### CB-Spider Readme 참고: https://github.com/cloud-barista/cb-spider
- #### 활용 가이드
  - #### CB-Spider Wiki 참고: https://github.com/cloud-barista/cb-spider/wiki 
