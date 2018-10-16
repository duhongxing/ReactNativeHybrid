/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';

import { Platform,
 		 StyleSheet, 
 		 Text,
 		 View,
 		 AppRegistry, 
 		 Image,
 		 TextInput,
 		 Button,
 		 NativeModules
 	} from 'react-native';

var CalendarManager = NativeModules.CalendarManager;


type Props = {};
export default class App extends Component<Props> {
	onPress(){
        CalendarManager.addEventThree('周少停',19910730);
        CalendarManager.addEventOne('周少停');
    }
  render() {
  		return ( 
  			<View style={{marginTop:40}}>
                <Button onPress={this.onPress.bind(this)} title="Hello" />
            </View>
  		);
  }
}



const styles = StyleSheet.create({
	container: {
		flex : 1,
		justifyContent : 'center',
		alignItems : 'center',
		backgroundColor : '#F5FCFF',
	},
	weclocme: {
		fontSize: 20,
		textAlign: 'center',
		margin: 10,
	}
});


AppRegistry.registerComponent('iOSRN', () => App)