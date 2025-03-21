import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.12


Rectangle{
	width:400
	height:300
	color:"#051f58"
	radius:8

	Button{
		text:"Button - To Main"
		anchors.centerIn:parent
		onClicked:{
			loginPage.visible=false
			mainPage.visible=true
		}
	}
}
