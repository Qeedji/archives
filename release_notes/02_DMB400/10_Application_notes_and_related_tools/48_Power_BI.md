# Power BI

#### **SUMMARY**
`Power BI` is provided as a cloud solution, `Power BI Service`, or as an on-premises solution, `Power BI Report Server`.
This document explains how to configure `Gekkota OS` to play a Power BI Web page hosted on these two different solutions.

>##### **COMPATIBILITY**
- `Power BI Service` (powerbi.com), cloud solution
    - `Gekkota OS` 4.12.10:
        - for device DMB400,
        - for device SMA300.

- `Power BI Report Server`, on-premises solution:
    - `Gekkota` OS 4.13.11:
        - for device DMB400,
        - for device SMA300.
    - The user preference ```dom.mozBrowserFramesEnabled``` (default value = `true`) must be set to the value `false`.
        - Warning: changing this preference to the value `false` may have unexpected consequences. Indeed after having played a Web page of rare specific Web sites, `Playzilla` may be unable to play other medias after a while. For further information, contact support@qeedji.tech.
    - To create a Power Bi media, enter the `Power BI` URL with the authentication credentials in the URI
        - ex: ```http://<user>:<password>@<server_ip_addr>:<port>/Reports/powerbi/test?rs:embed=true```
            - for information, the suffix ```?rs:embed=true``` allows to remove the `Power BI Report Server` report header
            - note: if the URI is played infinitely, the `Power BI Report Server` Web page content cannot be updated even if the Power BI server data are updated properly

>##### **INFORMATION**
- The `Power BI` Web pages viewed properly on PC computers owning a large amount of volatile memory may not be played after a while when played several time on a device. In some case, it should be required to change the `javascript.options.mem.max` user preference value. For further information, contact support@qeedji.tech.

>##### **INFORMATION ABOUT POWER BI REPORT SERVER**
- These are the different softwares which have been installed to validate the `Power BI Report Server` solution:
    - `Power BI Report Server`: 15.0.1103.232,
    - `SQL server 2019`: 2019.150.2070.41,
    - `Power BI Desktop Optimized`: 2.81.5831.1181 64-bit.
    - Qeedji does not bring support to install and configure `Power BI Report Server`.
- Change the `Power BI` server data update period for each report
    - Go in the `Browse` menu ```http://<user>:<password>@<server_ip_addr>:<port>/Reports/browse/```,
    - Select a report, fly over the report and click on the edit button (`...`),
    - Click on the `Manage` menu,
    - Select the `Scheduled refresh` menu then on the right panel, click on the `Edit` hyperlink to change the `Power BI` server data update period
- Even if the server data are updated periodically, once published infinitely on the device, the content of the report Web page is not updated. To work around, you can use a custom .html file to refresh the `Power BI Report Server` Web page
    - Warning: To work properly, the .html page must contain an URL of a Power BI Report Web page having the `Power BI Report Server` header containing also the `Refresh` button
        - ```http://<user>:<password>@<server_ip_addr>:<port>/Reports/powerbi/test```,
    - Download the `power-bi-report-server-15.0-with-refresh.html` html example [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/powerbi/power-bi-report-server-15.0-with-refresh-V1.10.11.html)
    - Edit the HTML file,
        - replace by your own `Power BI Report Server` URL: ```const powerBiUrl="http://<user>:<pass>@ip:port/Reports/powerbi/test"```
        - set the refresh period of the Power BI report Web page content according to you needs: ```const refreshInterval = 300; // seconds```
        - ensure that the HTML has not a intrinsic duration
    - Insert the .html in a calendar timeslot and play it `infinitely` or with a large fixed duration.
