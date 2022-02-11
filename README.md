[aiacademy]: https://goai.co.kr "AIA aiacademy"

# Establishing and testing chat services 😂

[자바기반 Web Platform Service(RestFul Server) 구축 Web, App 개발자 양성과정][aiacademy]를 들으며  
Final project에 들어갈 chatting service를 구축 해보고 test 해보았다.

## Overview

- Node.js의 특성 이벤트 기반, 논 블로킹 I/O 모델 **(비동기)** , Single Thread의 이해
- Express를 통한 Web Server 구축
- Node Package Manage를 통해 라이브러리 관리와 Node version 관리
- MongoDB ODM(Object Document Mapping) 중 Mongoose의 이해
- Mongoose를 사용한 NoSql Schema 생성
- MongoDB qurey insert
- Socket.io를 통한 server와 client간의 양방향 통신
- Socket.io namespace와 room의 이해

![image](https://user-images.githubusercontent.com/48302622/153537705-7ef5d22c-5544-40a1-8c3c-45a61f4b5d6a.png)

![image](https://user-images.githubusercontent.com/48302622/153540928-b933c76b-1501-4f9e-9165-04720b72d86e.png)

## Tech Stack

- <img src="https://img.shields.io/badge/Node.js-16.13.1-339933?style=flat&logo=Node.js"/></a>&nbsp;
- <img src="https://img.shields.io/badge/npm-8.1.2-CB3837?style=flat&logo=npm"/></a>&nbsp;
- <img src="https://img.shields.io/badge/Tomcat-7.0.55-F8DC75?style=flat&logo=Apache Tomcat&logoColor=F8DC75"/></a>&nbsp;
- <img src="https://img.shields.io/badge/jQuery-3.3.1-0769AD?style=flat&logo=jQuery"/></a>&nbsp;
- <img src="https://img.shields.io/badge/MongoDB-4.4.12-47A248?style=flat&logo=MongoDB"/></a>&nbsp;
- <img src="https://img.shields.io/badge/mongoose-6.1.4-CB3837?style=flat"/></a>&nbsp;
- <img src="https://img.shields.io/badge/Socket.io-3.4.6-010101?style=flat&logo=socket.io"/></a>&nbsp;
- <img src="https://img.shields.io/badge/Express-4.15.2-000000?style=flat&logo=Express"/></a>&nbsp;

## Review

프로젝트를 진행하면서 필요한 기능구현을 위해 node.js를 공부하기 시작했다.  
강의를 듣기 전 따라치기만 급급했던 내가 강의를 듣고 코드의 흐름을 파악하고 문제 해결능력이 좋아졌다는 것을 Mini-project를 하며 느꼈고, Java로 시작하여 다른 언어를 접한다는게 솔직히 약간 걱정이 많이 됐다.  
두렵고 불안하다고 가만히 있는것 보다 부딛혀 보고 느껴보자 라는 생각으로 node를 공부하게 되었고,  
나만의 방식으로 공부를 해 자바랑 비교를 하먼서 하다보니 생각보다 진입 장벽이 높진 않게 느껴졌다.  
제일 어려웠던 부분은 MongoDB 부분이였다.  
여태 배웠던 관계형 데이터베이스가 아닌 다른 방식의 데이터베이스 형식이여서 스키마부터 시작하여 어떻게 접근하고 어떻게 CRUD를 하는지 많이 어려웠고 spring에서 mongo-java-driver를 찾아 버전을 확인하고 MongoTemplate을 사용하는 부분에서 많은 어려움을 느끼게 되었다.  
내가 어느 부분이 부족하고 미흡한지 알게되었고 그를 보안하고자 RDBMS와 NoSQL에 대한 기본 개념부터 다시 공부하게 되었고, DBFactory에 대해 다시 공부 하게 되었다.
