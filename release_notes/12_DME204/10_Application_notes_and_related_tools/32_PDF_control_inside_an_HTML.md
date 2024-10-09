# PDF control inside an HTML

This document explains how to control a PDF loaded in an HTML document (PDF document declared in an iframe).

The *Gekkota 4 PDF viewer* listens to the following messages :

- `restart`
- `gotoNext`
- `gotoPrev`
- `gotoPage`: the page number must be provided in the ```<i>detail</i>``` attribute of the message.

## Message listening

Code sample:
```
window.addEventListener("message", function (event) {
            if (event.source === MyIframeWindow) {
                var type;
                if (typeof event.data === "string") {
                    type = event.data.toLowerCase();
                } else {
                    type = event.data.type.toLowerCase();
                }
                // retrieve event detail if present
                if (event.data.detail) {

                }
            }
```

The *Gekkota 4 PDF viewer* can send the following messages:

- `error`
- `endEvent`
- `beginEvent`
- `pageDuration` : the page duration is provided in the ```<i>detail</i>``` attribute of the message, in milliseconds
- `pageChanged` : the page number is provided in the ```<i>detail</i>``` attribute of the message

## Message sending

Code sample:
```
MyIframeWindow.postMessage("restart", "*");
```
```
var goToPageMessage = {
    type: "gotoPage",
    detail: 3
};
MyIframeWindow.postMessage(goToPageMessage, "*");
```

## Entire example
Here is a entire HTML example to interact with a PDF file:

- PDF interaction example.html [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/PDF%20interaction%20example.html)
