<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="client.vo.Person" %>
<%@ page import="client.vo.Account" %>
<%
    ArrayList<Account<? extends Person>> accountList = new ArrayList<>();

    // Person 객체 생성
    Person person1 = new Person("Alice");
    Person person2 = new Person("Bob");

    // Account 객체 생성
    Account<Person> account1 = new Account<>(person1);
    Account<Person> account2 = new Account<>(person2);

    // 계좌 리스트에 추가
    accountList.add(account1);
    accountList.add(account2);

    // 출력
    for (Account<? extends Person> account : accountList) {
        out.println("Account Holder: " + account.getAccountHolder().getName() + "<br>");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>