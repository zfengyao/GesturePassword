/**
 * Created by zd-macpro on 16/4/11.
 */

var exec    = require('cordova/exec'),
    cordova = require('cordova');

module.exports = {
    ssoLogin:function(successCallback, errorCallback,args){
        if(args == null || args == undefined){
            args = 0;
        }
        exec(successCallback, errorCallback, "GesturePassWord", "gesturePasswordSetting", [args]);
    },
    logout:function(successCallback, errorCallback){
        exec(successCallback, errorCallback, "YCQQ", "logout", []);
    }

};

