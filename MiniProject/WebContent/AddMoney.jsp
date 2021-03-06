<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Money</title>
    <style>
        div.top {
            background-color: #5b4159;
            padding: 5px;
            font-family: fontawesome;
            color: white;
            font-size: 18px;
            border-radius: 5px;
            letter-spacing: 1px;
        }

        div.addmoneyblock {
            border: 1px solid;
            box-shadow: 5px 5px 5px #5b4159;
            border-radius: 7px;
            margin-top: 12%;
            margin-left: 26%;
            margin-right: 20%;
            width: 40%;
        }

        input[type=number],[type=text] {
            width: 60%;
            padding: 15px;
            margin-top: 1%;
            margin-bottom: 15px;
            margin-left: 18%;
            border: none;
            background: #f1f1f1;
            border-radius: 5px;
            display: block;
            color: #735c5c;
        }

        input[type=button] {
            width: 44%;
            padding: 15px;
            margin-bottom: 15px;
            margin-left: 28%;
            border: none;
            background: #f1f1f1;
            border-radius: 5px;
            display: block;
            color: #735c5c;
        }

        #addmoney_button:hover {
            background-color: #5b4159;
            border-radius: 7px;
        }
    </style>
</head>
<body>
    <div class=" top">
        <div class="top-content"> <p>PayYou</p></div>
    </div>
    <div class="addmoneyblock">
        <div class="addmoney">
           <input type="text" id="debitcard_no" name="debitcardno" placeholder="Enter Debit Card No" />
            <input type="text" id="debitcard_pin" name="debitcardpin" placeholder="Enter Four Digit Pin" /> 
            <input type="number" id="addmoney_input" step="1" min="0" name="addmoneyinput" placeholder="Enter Amount in Rupees" />
        </div>
        <div class="addmoneybutton">
            <input type="button" id="addmoney_button" name="Addmoneybutton" value="Add Money" />
        </div>
    </div>
</body>
</html>