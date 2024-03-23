<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popup Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        #popup {
            display: none;
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 999;
        }

        #overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 998;
        }

        #btnSubmit {
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        #btnClose {
            padding: 10px;
            background-color: #f44336;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<% String msg = (String)session.getAttribute("msg");
   if (msg != null && !msg.isEmpty()) { %>
    <button id="btnSubmit">Submit</button>

    <div id="overlay"></div>

    <div id="popup">
        <p><%= msg %></p>
        <button id="btnClose">OK</button>
    </div>

    <script>
        document.getElementById('btnSubmit').addEventListener('click', function() {
            document.getElementById('popup').style.display = 'block';
            document.getElementById('overlay').style.display = 'block';
        });

        document.getElementById('btnClose').addEventListener('click', function() {
            document.getElementById('popup').style.display = 'none';
            document.getElementById('overlay').style.display = 'none';
        });
    </script>
<% } %>

</body>
</html>
