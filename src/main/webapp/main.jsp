<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    <script>
        $(document).on("click", "#getbutton", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            $.get("lemain", function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                $("#answer").text(responseText);           // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
            });
        });
        $(document).on("click", "#postbutton", function () {
            $.post("lemain", function (responseText) {
                $("#answer").text(responseText);
            });
        });
        $(document).on("click", "#putbutton", function () {
            $.put("lemain", function (responseText) {
                $("#answer").text(responseText);
            });
        });
        $(document).on("click", "#deletebutton", function () {
            $.delete("lemain", function (responseText) {
                $("#answer").text(responseText);
            });
        });
    </script>
</head>
<body>
<button id="getbutton">get is here</button>
<button id="postbutton">post is here</button>
<button id="putbutton">put is here</button>
<button id="deletebutton">delete is here</button>
<div id="answer"></div>
</body>
</html>
