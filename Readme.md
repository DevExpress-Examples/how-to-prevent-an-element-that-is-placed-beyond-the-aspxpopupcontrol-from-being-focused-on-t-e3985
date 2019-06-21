<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to prevent an element that is placed beyond the ASPxPopupControl from being focused on "Tab" key press
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3985/)**
<!-- run online end -->


<p>This example demonstrates how to prevent an element placed beyond the ASPxPopupControl from being focused when pressing the "Tab" key.</p><p><br />
To implement this functionality it is necessary to do the following:<br />
- add a dummy input element to your PopupControl content as a last element. You can use this code:<br />


```aspx
<input type="text" onfocus="OnInputFocus();" style="width: 0px; height: 0px; padding-top: 0px;<newline/>

```

 

```aspx
padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px;<newline/>

```

 

```aspx
border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" /><newline/>

```

- use its client-side onfocus attribute to handle its onfocus event. In this event handler set the focus to the first PopupControl's editor by using a client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientEdit_Focustopic"><u>ASPxClientEdit.Focus</u></a> method:<br />


```js
function OnInputFocus() {<newline/>
   firstEditor.Focus();<newline/>
}
```

 </p>

<br/>


