<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>브랜드 정보</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
        }

        .help_area {
            background-color: white;
            max-width: 600px;
            padding: 20px;
            border-radius: 8px;
        }

        .help_area h3 {
            font-size: 14px;
            color: #333;
            margin: 10px 0;
        }

        hr {
            border: 1px solid #000;
            margin: 10px 0;
        }

       button {
		    background-color: black;
		    color: white;
		    padding: 4px 15px;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    font-size: 13px;
		}

        button:hover {
            background-color: black;
        }
       </style> 
</head>

<body>

<div data-v-581bdaec="" align="center" class="help_area">
        <div data-v-581bdaec="">
        <h2 data-v-581bdaec="" data-v-5ee806c3="">매장 정보</h2>
        <hr color="black" width="300">
        
                    <div data-v-5ee806c3="" data-v-581bdaec="">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="">브랜드명 : ${storeName}</h3>
                    </div>
                    
                    
                   <div data-v-5ee806c3="" data-v-581bdaec="">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="">주소 : ${address}</h3>
                   </div>
            

                    
                     <hr color="black" width="300"><br><br>
                    
                    
                    <button data-v-0a6aebaa="" data-v-581bdaec=""
                        style="width: 40%; cursor: pointer;" onclick="closeWindow()"
                        class="btn full solid disabled">닫기</button>


        </div>
    </div>
    
    
    <script>
        function closeWindow() {
        window.close();
    }
    </script>   
    
</body>

</html>    
    