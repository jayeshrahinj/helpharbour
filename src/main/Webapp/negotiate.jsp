<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Negotiation</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
            background-color: #f4f4f4;
        }

        .chat-box {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 10px;
            max-width: 400px;
            overflow-y: auto;
            margin-bottom: 20px;
        }

        .input-container {
            display: flex;
            margin-top: 10px;
        }

        .message-input {
            flex: 1;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .send-button {
            margin-left: 10px;
            padding: 8px 12px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="chat-box">
    <%-- Sample initial chat messages --%>
    <div><strong>User:</strong> Hi, can we negotiate the task price?</div>
    <div><strong>Buddy:</strong> Sure, what's your offer?</div>
</div>

<%
    // Check if there's a new message submitted
    String newMessage = request.getParameter("newMessage");
    if (newMessage != null && !newMessage.isEmpty()) {
%>
        <div><strong>User:</strong> <%= newMessage %></div>
<%
    }
%>

<%
    // Check if there's a new buddy message submitted
    String newBuddyMessage = request.getParameter("newBuddyMessage");
    if (newBuddyMessage != null && !newBuddyMessage.isEmpty()) {
%>
        <div><strong>Buddy:</strong> <%= newBuddyMessage %></div>
<%
    }
%>

<form action="taskNegotiation.jsp" method="post">
    <div class="input-container">
        <input type="text" name="newMessage" class="message-input" placeholder="Type your message...">
        <button type="submit" class="send-button">Send</button>
    </div>
</form>

</body>
</html>
