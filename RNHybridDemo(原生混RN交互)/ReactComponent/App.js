/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {
			AppRegistry,
			Platform,
			StyleSheet,
			Text,
			View,
			NativeModules,
			NativeAppEventEmitter
		} from 'react-native';

export default class RNMoudle extends Component<Props> {
  	render() {
    return (
      <View style={{width: 375, height:200,marginTop:100,backgroundColor:'black'}}>
        <Text style={{fontSize:20,color:'white',marginLeft:20,marginTop:20}}>来自与RN的视图</Text>
      </View>
    );
  }
}

AppRegistry.registerComponent("RNViewAddNative", () => RNMoudle);