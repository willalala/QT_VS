import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.12

Rectangle{
	width:200
	height:100
	//color:"#498ff8"
    color:"white"
	radius:8

	Button{
		text:"Button -To Login"
		anchors.centerIn:parent
		onClicked:{
			loginPage.visible=true
			mainPage.visible=false
		}
	}

	Column{
        spacing:10
        anchors.centerIn:parent

        TextField{
            id:input1
            placeholderText:"number 1"
        }

        TextField{
            id:input2
            placeholderText:"number 2"
        }

        Row{
            spacing:10

            Button{
                text:"+"
                onClicked:calculate("add")
            }

            Button{
                text:"-"
                onClicked:calculate("subtract")
            }

            Button{
                text:"*"
                onClicked:calculate("multiply")
            }

            Button{
                text:"/"
                onClicked:calculate("divide")
            }
        }

        Label{
            id:resultLabel
            text:"result:"
        }
    }

    function calculate(operation){
        var num1=parseFloat(input1.text);
        var num2=parseFloat(input2.text);
        var result;

        switch(operation){
            case "add":
                result=num1+num2;
                break;
            case "subtract":
                result=num1-num2;
                break;
            case "multiply":
                result=num1*num2;
                break;
            case "divide":
                if(num2!==0){
                    result=num1/num2;
                }else{
                    result="can not be 0"
                }
                break;
        }
        resultLabel.text="result:"+result;
    }
}