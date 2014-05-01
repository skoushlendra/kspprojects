<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<ckeditor:editor textareaAttributes="${attributes}" basePath="ckeditor/"
	config="${settings}" editor="documentdata"></ckeditor:editor>
