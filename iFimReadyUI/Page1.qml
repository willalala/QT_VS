import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Item{
	signal pageChange(string page)
		
	Button{
		text:"Go to page2"
		onClicked:{
			pageChanged("page2")
		}
	}
}