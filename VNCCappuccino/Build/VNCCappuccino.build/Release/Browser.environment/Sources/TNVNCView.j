@STATIC;1.0;I;15;AppKit/AppKit.jt;7895;
objj_executeFile("AppKit/AppKit.j",NO);
TNVNCCappuccinoStateNormal="normal";
TNVNCCappuccinoStateFailed="failed";
TNVNCCappuccinoStateFatal="fatal";
TNVNCCappuccinoStateDisconnect="disconnect";
TNVNCCappuccinoStateDisconnected="disconnected";
TNVNCCappuccinoStateLoaded="loaded";
TNVNCCappuccinoStatePassword="password";
TNVNCCappuccinoStateSecurityResult="SecurityResult";
var _1=objj_allocateClassPair(CPView,"TNVNCView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_encrypted"),new objj_ivar("_trueColor"),new objj_ivar("_trueColor"),new objj_ivar("_defaultSize"),new objj_ivar("_host"),new objj_ivar("_message"),new objj_ivar("_oldState"),new objj_ivar("_password"),new objj_ivar("_port"),new objj_ivar("_state"),new objj_ivar("_delegate"),new objj_ivar("_focusContainer"),new objj_ivar("_checkRate"),new objj_ivar("_frameBufferRequestRate"),new objj_ivar("_canvasID"),new objj_ivar("_fieldFocusTrick"),new objj_ivar("_zoom"),new objj_ivar("_canvas"),new objj_ivar("_DOMCanvas"),new objj_ivar("_DOMClipboard"),new objj_ivar("_oldResponder"),new objj_ivar("_RFB")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isEncrypted"),function(_3,_4){
with(_3){
return _encrypted;
}
}),new objj_method(sel_getUid("setEncrypted:"),function(_5,_6,_7){
with(_5){
_encrypted=_7;
}
}),new objj_method(sel_getUid("isTrueColor"),function(_8,_9){
with(_8){
return _trueColor;
}
}),new objj_method(sel_getUid("setTrueColor:"),function(_a,_b,_c){
with(_a){
_trueColor=_c;
}
}),new objj_method(sel_getUid("defaultSize"),function(_d,_e){
with(_d){
return _defaultSize;
}
}),new objj_method(sel_getUid("setDefaultSize:"),function(_f,_10,_11){
with(_f){
_defaultSize=_11;
}
}),new objj_method(sel_getUid("host"),function(_12,_13){
with(_12){
return _host;
}
}),new objj_method(sel_getUid("setHost:"),function(_14,_15,_16){
with(_14){
_host=_16;
}
}),new objj_method(sel_getUid("message"),function(_17,_18){
with(_17){
return _message;
}
}),new objj_method(sel_getUid("setMessage:"),function(_19,_1a,_1b){
with(_19){
_message=_1b;
}
}),new objj_method(sel_getUid("oldState"),function(_1c,_1d){
with(_1c){
return _oldState;
}
}),new objj_method(sel_getUid("setOldState:"),function(_1e,_1f,_20){
with(_1e){
_oldState=_20;
}
}),new objj_method(sel_getUid("password"),function(_21,_22){
with(_21){
return _password;
}
}),new objj_method(sel_getUid("setPassword:"),function(_23,_24,_25){
with(_23){
_password=_25;
}
}),new objj_method(sel_getUid("port"),function(_26,_27){
with(_26){
return _port;
}
}),new objj_method(sel_getUid("setPort:"),function(_28,_29,_2a){
with(_28){
_port=_2a;
}
}),new objj_method(sel_getUid("state"),function(_2b,_2c){
with(_2b){
return _state;
}
}),new objj_method(sel_getUid("setState:"),function(_2d,_2e,_2f){
with(_2d){
_state=_2f;
}
}),new objj_method(sel_getUid("delegate"),function(_30,_31){
with(_30){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_32,_33,_34){
with(_32){
_delegate=_34;
}
}),new objj_method(sel_getUid("focusContainer"),function(_35,_36){
with(_35){
return _focusContainer;
}
}),new objj_method(sel_getUid("setFocusContainer:"),function(_37,_38,_39){
with(_37){
_focusContainer=_39;
}
}),new objj_method(sel_getUid("checkRate"),function(_3a,_3b){
with(_3a){
return _checkRate;
}
}),new objj_method(sel_getUid("setCheckRate:"),function(_3c,_3d,_3e){
with(_3c){
_checkRate=_3e;
}
}),new objj_method(sel_getUid("frameBufferRequestRate"),function(_3f,_40){
with(_3f){
return _frameBufferRequestRate;
}
}),new objj_method(sel_getUid("setFrameBufferRequestRate:"),function(_41,_42,_43){
with(_41){
_frameBufferRequestRate=_43;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_44,_45,_46){
with(_44){
if(_44=objj_msgSendSuper({receiver:_44,super_class:objj_getClass("TNVNCView").super_class},"initWithFrame:",_46)){
_host=nil;
_port=5900;
_encrypted=NO;
_trueColor=YES;
_frameBufferRequestRate=1413;
_checkRate=217;
_password="";
_state=TNVNCCappuccinoStateDisconnected;
_oldState=nil;
_defaultSize=CPSizeMake(800,490);
_zoom=1;
_canvasID=objj_msgSend(CPString,"UUID");
_focusContainer=document;
_fieldFocusTrick=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,0,0,0));
objj_msgSend(_44,"addSubview:",_fieldFocusTrick);
_DOMCanvas=_focusContainer.createElement("canvas");
_DOMCanvas.id=_canvasID;
_DOMCanvas.innerHTML="Canvas not supported.";
_DOMCanvas.style.border="3px solid #8F8F8F";
_DOMCanvas.onmouseover=function(e){
objj_msgSend(_44,"focus");
};
_DOMCanvas.onmouseout=function(e){
objj_msgSend(_44,"unfocus");
};
_DOMElement.appendChild(_DOMCanvas);
}
return _44;
}
}),new objj_method(sel_getUid("setBackgroundImage:"),function(_47,_48,_49){
with(_47){
_DOMCanvas.style.backgroundImage="url("+_49+")";
}
}),new objj_method(sel_getUid("defaultSize:"),function(_4a,_4b,_4c){
with(_4a){
_canvas.canvas_default_w=_4c.width;
_canvas.canvas_default_h=_4c.height;
}
}),new objj_method(sel_getUid("canvasSize"),function(_4d,_4e){
with(_4d){
return CPSizeMake(_DOMCanvas.width,_DOMCanvas.height);
}
}),new objj_method(sel_getUid("load"),function(_4f,_50){
with(_4f){
CPLog.info("loading noVNC");
_RFB=RFB({"target":_DOMCanvas,"focusContainer":_focusContainer,"fbu_req_rate":_frameBufferRequestRate,"check_rate":_checkRate});
_canvas=_RFB.get_canvas();
if(!_canvas){
objj_msgSend(CPException,"raise:reason:","No canvas","Cannot get canvas with ID: "+_canvasID);
}
_RFB.set_encrypt(_encrypted);
_RFB.set_true_color(_trueColor);
_RFB.set_updateState(function(rfb,_51,_52,msg){
CPLog.info("noVNC state changed from "+_52+" to "+_51);
_state=_51;
_oldState=_52;
_message=msg;
if(_delegate&&(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("vncView:updateState:message:")))){
objj_msgSend(_delegate,"vncView:updateState:message:",_4f,_51,msg);
}
});
_RFB.set_clipboardReceive(function(rfb,_53){
CPLog.info("noVNC received clipboard text: "+_53);
if(_delegate&&(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("vncView:didReceivePasteBoardText:")))){
objj_msgSend(_delegate,"vncView:didReceivePasteBoardText:",_4f,_53);
}
});
CPLog.info("noVNC loaded");
}
}),new objj_method(sel_getUid("resetSize"),function(_54,_55){
with(_54){
_DOMCanvas.width=_defaultSize.width;
_DOMCanvas.height=_defaultSize.height;
}
}),new objj_method(sel_getUid("focus"),function(_56,_57){
with(_56){
if(_canvas){
_canvas.set_focused(YES);
_oldResponder=objj_msgSend(objj_msgSend(_56,"window"),"firstResponder");
objj_msgSend(objj_msgSend(_56,"window"),"makeFirstResponder:",_fieldFocusTrick);
_DOMCanvas.style.border="3px solid #A1CAE2";
_DOMCanvas.focus();
}
}
}),new objj_method(sel_getUid("unfocus"),function(_58,_59){
with(_58){
if(_canvas){
_canvas.set_focused(NO);
objj_msgSend(objj_msgSend(_58,"window"),"makeFirstResponder:",_oldResponder);
_DOMCanvas.style.border="3px solid #8F8F8F";
}
}
}),new objj_method(sel_getUid("zoom"),function(_5a,_5b){
with(_5a){
if(_canvas){
return _canvas.get_scale();
}
}
}),new objj_method(sel_getUid("setZoom:"),function(_5c,_5d,_5e){
with(_5c){
_zoom=_5e;
if(_canvas){
_canvas.rescale(_5e);
}
}
}),new objj_method(sel_getUid("connect:"),function(_5f,_60,_61){
with(_5f){
CPLog.info("connecting noVNC");
_RFB.connect(_host,_port,_password);
if(_canvas){
_canvas.rescale(_zoom);
}
}
}),new objj_method(sel_getUid("disconnect:"),function(_62,_63,_64){
with(_62){
CPLog.info("disconnecting noVNC");
_canvas.set_ctx=nil;
_RFB.force_disconnect();
}
}),new objj_method(sel_getUid("sendPassword:"),function(_65,_66,_67){
with(_65){
CPLog.info("sending password to noVNC");
_RFB.sendPassword(_67);
_password=_67;
}
}),new objj_method(sel_getUid("sendCtrlAltDel:"),function(_68,_69,_6a){
with(_68){
if((_RFB)&&(_state==TNVNCCappuccinoStateNormal)){
_RFB.sendCtrlAltDel();
}
}
}),new objj_method(sel_getUid("sendTextToPasteboard:"),function(_6b,_6c,_6d){
with(_6b){
if((_RFB)&&(_state==TNVNCCappuccinoStateNormal)){
_RFB.clipboardPasteFrom(_6d);
}
}
})]);
