<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${result==0 }">예약완료</c:if>
<c:if test="${result==1 }">이미 예약하셨습니다.</c:if>