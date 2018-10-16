/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
// import App from './App';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  NativeModules,
  Button,
  Image
} from 'react-native';
var CalendarManager = NativeModules.CalendarManager;

export default class RNAddNative extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Image  style={{width:250,height:300}} source={{uri:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1539694694356&di=20877dc4654a4e6822a30962e0953c72&imgtype=0&src=http%3A%2F%2Fpic22.nipic.com%2F20120621%2F1628220_155636709122_2.jpg"}}/>
        <Button style={styles.instructions} onPress={()=>this.btnOnclick()}  title="点击1" />
        <Button style={styles.instructions} onPress={()=>this.btnOnclick1()}  title="点击2" />
        <Button style={styles.instructions} onPress={()=>this.btnOnclick2()}  title="点击3" />
        <Button style={styles.instructions} onPress={()=>this.btnOnclick3()}  title="点击4" />
      </View>
    );
  }
    btnOnclick =() =>{
        CalendarManager.addEventOne('lucky dog');
        
    }
    btnOnclick1 =() =>{
        CalendarManager.addEventTwo('lucky dog',{job:'programmer'});
    }
    btnOnclick2 =() =>{
        CalendarManager.addEventThree('周少停',19910730);
    }
    btnOnclick3 =() =>{
        CalendarManager.testCallbackEventOne(('喔喔喔'),(error,events) => {
          if (error) {
            // statement
            console.error(error);
          } else {
            // statement
            alert(events);
          }
        })
    }
    
     //Promise回调
    async callBackTwo(){
        try{
            var events=await CalendarManager.testCallbackEventTwo();
            alert(events)
        }catch(e){
            console.error(e);
        }
    }
    //使用原生定义的常量
    useNativeValue = ()=>{
        alert(CalendarManager.ValueOne)
    }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('NativeAddRN', () => RNAddNative);
