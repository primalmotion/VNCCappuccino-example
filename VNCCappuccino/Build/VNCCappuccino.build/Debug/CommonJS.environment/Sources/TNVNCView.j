@STATIC;1.0;I;15;AppKit/AppKit.jt;10887;objj_executeFile("AppKit/AppKit.j", NO);
TNVNCCappuccinoStateNormal = "normal";
TNVNCCappuccinoStateFailed = "failed";
TNVNCCappuccinoStateFatal = "fatal";
TNVNCCappuccinoStateDisconnect = "disconnect";
TNVNCCappuccinoStateDisconnected = "disconnected";
TNVNCCappuccinoStateLoaded = "loaded";
TNVNCCappuccinoStatePassword = "password";
TNVNCCappuccinoStateSecurityResult = "SecurityResult";
{var the_class = objj_allocateClassPair(CPView, "TNVNCView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_encrypted"), new objj_ivar("_trueColor"), new objj_ivar("_trueColor"), new objj_ivar("_defaultSize"), new objj_ivar("_host"), new objj_ivar("_message"), new objj_ivar("_oldState"), new objj_ivar("_password"), new objj_ivar("_port"), new objj_ivar("_state"), new objj_ivar("_delegate"), new objj_ivar("_focusContainer"), new objj_ivar("_checkRate"), new objj_ivar("_frameBufferRequestRate"), new objj_ivar("_canvasID"), new objj_ivar("_fieldFocusTrick"), new objj_ivar("_zoom"), new objj_ivar("_canvas"), new objj_ivar("_DOMCanvas"), new objj_ivar("_DOMClipboard"), new objj_ivar("_oldResponder"), new objj_ivar("_RFB")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isEncrypted"), function $TNVNCView__isEncrypted(self, _cmd)
{ with(self)
{
return _encrypted;
}
},["id"]),
new objj_method(sel_getUid("setEncrypted:"), function $TNVNCView__setEncrypted_(self, _cmd, newValue)
{ with(self)
{
_encrypted = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("isTrueColor"), function $TNVNCView__isTrueColor(self, _cmd)
{ with(self)
{
return _trueColor;
}
},["id"]),
new objj_method(sel_getUid("setTrueColor:"), function $TNVNCView__setTrueColor_(self, _cmd, newValue)
{ with(self)
{
_trueColor = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("defaultSize"), function $TNVNCView__defaultSize(self, _cmd)
{ with(self)
{
return _defaultSize;
}
},["id"]),
new objj_method(sel_getUid("setDefaultSize:"), function $TNVNCView__setDefaultSize_(self, _cmd, newValue)
{ with(self)
{
_defaultSize = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("host"), function $TNVNCView__host(self, _cmd)
{ with(self)
{
return _host;
}
},["id"]),
new objj_method(sel_getUid("setHost:"), function $TNVNCView__setHost_(self, _cmd, newValue)
{ with(self)
{
_host = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("message"), function $TNVNCView__message(self, _cmd)
{ with(self)
{
return _message;
}
},["id"]),
new objj_method(sel_getUid("setMessage:"), function $TNVNCView__setMessage_(self, _cmd, newValue)
{ with(self)
{
_message = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("oldState"), function $TNVNCView__oldState(self, _cmd)
{ with(self)
{
return _oldState;
}
},["id"]),
new objj_method(sel_getUid("setOldState:"), function $TNVNCView__setOldState_(self, _cmd, newValue)
{ with(self)
{
_oldState = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("password"), function $TNVNCView__password(self, _cmd)
{ with(self)
{
return _password;
}
},["id"]),
new objj_method(sel_getUid("setPassword:"), function $TNVNCView__setPassword_(self, _cmd, newValue)
{ with(self)
{
_password = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("port"), function $TNVNCView__port(self, _cmd)
{ with(self)
{
return _port;
}
},["id"]),
new objj_method(sel_getUid("setPort:"), function $TNVNCView__setPort_(self, _cmd, newValue)
{ with(self)
{
_port = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("state"), function $TNVNCView__state(self, _cmd)
{ with(self)
{
return _state;
}
},["id"]),
new objj_method(sel_getUid("setState:"), function $TNVNCView__setState_(self, _cmd, newValue)
{ with(self)
{
_state = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("delegate"), function $TNVNCView__delegate(self, _cmd)
{ with(self)
{
return _delegate;
}
},["id"]),
new objj_method(sel_getUid("setDelegate:"), function $TNVNCView__setDelegate_(self, _cmd, newValue)
{ with(self)
{
_delegate = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("focusContainer"), function $TNVNCView__focusContainer(self, _cmd)
{ with(self)
{
return _focusContainer;
}
},["id"]),
new objj_method(sel_getUid("setFocusContainer:"), function $TNVNCView__setFocusContainer_(self, _cmd, newValue)
{ with(self)
{
_focusContainer = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("checkRate"), function $TNVNCView__checkRate(self, _cmd)
{ with(self)
{
return _checkRate;
}
},["id"]),
new objj_method(sel_getUid("setCheckRate:"), function $TNVNCView__setCheckRate_(self, _cmd, newValue)
{ with(self)
{
_checkRate = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("frameBufferRequestRate"), function $TNVNCView__frameBufferRequestRate(self, _cmd)
{ with(self)
{
return _frameBufferRequestRate;
}
},["id"]),
new objj_method(sel_getUid("setFrameBufferRequestRate:"), function $TNVNCView__setFrameBufferRequestRate_(self, _cmd, newValue)
{ with(self)
{
_frameBufferRequestRate = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $TNVNCView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVNCView").super_class }, "initWithFrame:", aFrame))
    {
        _host = nil;
        _port = 5900;
        _encrypted = NO;
        _trueColor = YES;
        _frameBufferRequestRate = 1413;
        _checkRate = 217;
        _password = "";
        _state = TNVNCCappuccinoStateDisconnected;
        _oldState = nil;
        _defaultSize = CPSizeMake(800.0, 490.0);
        _zoom = 1;
        _canvasID = objj_msgSend(CPString, "UUID");
        _focusContainer = document
        _fieldFocusTrick = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CPRectMake(0,0,0,0));
        objj_msgSend(self, "addSubview:", _fieldFocusTrick);
        _DOMCanvas = _focusContainer.createElement("canvas");
        _DOMCanvas.id = _canvasID;
        _DOMCanvas.innerHTML = "Canvas not supported.";
        _DOMCanvas.style.border = "3px solid #8F8F8F";
        _DOMCanvas.onmouseover = function(e){
            objj_msgSend(self, "focus");
        };
        _DOMCanvas.onmouseout = function(e){
            objj_msgSend(self, "unfocus");
        };
        _DOMElement.appendChild(_DOMCanvas);
    }
    return self;
}
},["id","CPRect"]), new objj_method(sel_getUid("setBackgroundImage:"), function $TNVNCView__setBackgroundImage_(self, _cmd, anImagePath)
{ with(self)
{
    _DOMCanvas.style.backgroundImage = "url("+anImagePath+")";
}
},["void","CPString"]), new objj_method(sel_getUid("defaultSize:"), function $TNVNCView__defaultSize_(self, _cmd, aRect)
{ with(self)
{
    _canvas.canvas_default_w = aRect.width;
    _canvas.canvas_default_h = aRect.height;
}
},["void","CPRect"]), new objj_method(sel_getUid("canvasSize"), function $TNVNCView__canvasSize(self, _cmd)
{ with(self)
{
    return CPSizeMake(_DOMCanvas.width, _DOMCanvas.height);
}
},["CPRect"]), new objj_method(sel_getUid("load"), function $TNVNCView__load(self, _cmd)
{ with(self)
{
    CPLog.info("loading noVNC");
    _RFB = RFB({"target": _DOMCanvas,
                "focusContainer": _focusContainer,
                "fbu_req_rate": _frameBufferRequestRate,
                "check_rate": _checkRate
                });
    _canvas = _RFB.get_canvas();
    if (!_canvas)
        objj_msgSend(CPException, "raise:reason:", "No canvas", "Cannot get canvas with ID: " + _canvasID);
    _RFB.set_encrypt(_encrypted);
    _RFB.set_true_color(_trueColor);
    _RFB.set_updateState(function(rfb, state, oldstate, msg){
        CPLog.info("noVNC state changed from " + oldstate + " to " + state);
        _state = state;
        _oldState = oldstate;
        _message = msg;
        if (_delegate && (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("vncView:updateState:message:"))))
            objj_msgSend(_delegate, "vncView:updateState:message:", self, state, msg);
    });
    _RFB.set_clipboardReceive(function(rfb, text){
        CPLog.info("noVNC received clipboard text: " + text);
        if (_delegate && (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("vncView:didReceivePasteBoardText:"))))
            objj_msgSend(_delegate, "vncView:didReceivePasteBoardText:", self, text)
    });
    CPLog.info("noVNC loaded");
}
},["void"]), new objj_method(sel_getUid("resetSize"), function $TNVNCView__resetSize(self, _cmd)
{ with(self)
{
    _DOMCanvas.width = _defaultSize.width;
    _DOMCanvas.height = _defaultSize.height;
}
},["void"]), new objj_method(sel_getUid("focus"), function $TNVNCView__focus(self, _cmd)
{ with(self)
{
    if (_canvas)
    {
        _canvas.set_focused(YES);
        _oldResponder = objj_msgSend(objj_msgSend(self, "window"), "firstResponder");
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", _fieldFocusTrick);
        _DOMCanvas.style.border = "3px solid #A1CAE2";
        _DOMCanvas.focus();
    }
}
},["void"]), new objj_method(sel_getUid("unfocus"), function $TNVNCView__unfocus(self, _cmd)
{ with(self)
{
    if (_canvas)
    {
        _canvas.set_focused(NO);
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", _oldResponder);
        _DOMCanvas.style.border = "3px solid #8F8F8F";
    }
}
},["void"]), new objj_method(sel_getUid("zoom"), function $TNVNCView__zoom(self, _cmd)
{ with(self)
{
    if (_canvas)
        return _canvas.get_scale()
}
},["float"]), new objj_method(sel_getUid("setZoom:"), function $TNVNCView__setZoom_(self, _cmd, aZoomFactor)
{ with(self)
{
    _zoom = aZoomFactor;
    if (_canvas)
        _canvas.rescale(aZoomFactor);
}
},["void","float"]), new objj_method(sel_getUid("connect:"), function $TNVNCView__connect_(self, _cmd, aSender)
{ with(self)
{
    CPLog.info("connecting noVNC");
    _RFB.connect(_host, _port, _password);
    if (_canvas)
        _canvas.rescale(_zoom);
}
},["IBAction","id"]), new objj_method(sel_getUid("disconnect:"), function $TNVNCView__disconnect_(self, _cmd, sender)
{ with(self)
{
    CPLog.info("disconnecting noVNC");
    _canvas.set_ctx = nil;
    _RFB.force_disconnect();
}
},["IBAction","id"]), new objj_method(sel_getUid("sendPassword:"), function $TNVNCView__sendPassword_(self, _cmd, aPassword)
{ with(self)
{
    CPLog.info("sending password to noVNC");
    _RFB.sendPassword(aPassword);
    _password = aPassword;
}
},["void","CPString"]), new objj_method(sel_getUid("sendCtrlAltDel:"), function $TNVNCView__sendCtrlAltDel_(self, _cmd, sender)
{ with(self)
{
    if ((_RFB) && (_state == TNVNCCappuccinoStateNormal))
        _RFB.sendCtrlAltDel();
}
},["IBAction","id"]), new objj_method(sel_getUid("sendTextToPasteboard:"), function $TNVNCView__sendTextToPasteboard_(self, _cmd, aText)
{ with(self)
{
    if ((_RFB) && (_state == TNVNCCappuccinoStateNormal))
        _RFB.clipboardPasteFrom(aText);
}
},["void","CPString"])]);
}

