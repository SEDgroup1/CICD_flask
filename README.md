# CICD_flask_demo

## 安裝
1. jenkins
    * [macOS 本地端](https://www.jianshu.com/p/9dc3b45fbbec)
    * [console or Docker](https://medium.com/@NorthBei/ci-1-在各平台上安裝jenkins-ea0f19cc0881)
  
2. minikube
    * macOS：<br>
    `$ brew install minikube`
  
3. slack
    * [macOS](https://slack.com/intl/en-tw/downloads/mac?geocode=en-tw)
    * [windows](https://slack.com/intl/en-tw/downloads/windows)

## 流程
1. 在一台機器上安裝 jenkins (這邊範例使用在本機macOS安裝)
    * macOS jenkins 安裝與配置：https://www.jianshu.com/p/9dc3b45fbbec

2. 設定 jenkins 連接 repository，當偵測到 repository 有改變就會自動 `git pull` 下來到 jenkins 自己的工作目錄(預設會存在路徑： `～/.jenkins/workspace`)
    * https://www.youtube.com/watch?v=MmT5lYD5cy0

3. 設定拉下來後要 `build 建置` 時執行的動作(EX. shell script, docker build images,...等等)

4. 串接 slack notification API，通知建置成功
    * https://www.youtube.com/watch?v=jmVRb81KpUk
    * 新版串接介面：https://levelup.gitconnected.com/send-slack-notifications-with-jenkins-f8e8b2d2e748
