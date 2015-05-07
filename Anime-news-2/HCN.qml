import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Web 0.2
import QtQuick.Window 2.0

Item {
    width: Screen.width
    height: Screen.height

    Page {
        width: parent.width
        height: parent.height



        WebView {
                    id: webview
                    width: parent.width
                    height: parent.height
                    filePicker: filePickerLoader.item

                    Component.onCompleted: {
                        url = "http://haruhichan.com/wpblog/"
                    }
                    onDownloadRequested: {
                            /*if (!request.suggestedFilename && request.mimeType &&
                                internal.downloadMimeTypesBlacklist.indexOf(request.mimeType) > -1) {
                                return
                            }*/
                        console.log('Downloading image: ')

                            if (downloadLoader.status == Loader.Ready) {
                                var headers = { }
                                if(request.cookies.length > 0) {
                                    headers["Cookie"] = request.cookies.join(";")
                                }
                                if(request.referrer) {
                                    headers["Referer"] = request.referrer
                                }
                                headers["User-Agent"] = webview.context.userAgent
                                downloadLoader.item.downloadMimeType(request.url, request.mimeType, headers, request.suggestedFilename)
                            }
                        }
                    Loader {
                            id: filePickerLoader

                               function sizeweb(){
                                var size="ContentPickerDialog.qml"
                                if(webview.width>units.gu(137)){
                                        size="FilePickerDialog.qml"
                                    }
                               if(webview.width<units.gu(137))
                                {
                                    size="ContentPickerDialog.qml"
                                }
                                    return size
                                }
                            source: sizeweb()
                            //source:"FilePickerDialog.qml"
                            asynchronous: true
                        }
                    Loader {
                            id: downloadLoader
                            source: "Downloader.qml"
                            asynchronous: true
                        }

        }
    }


}
