<h2 style="padding-top:0">Humidity</h2>
<h4 style="padding-top:0">Javascript Example</h4>
>**Humidity WORKS NOT IHKJLHGKLDFHKS is currently under maintenance**

### Device Compatibility
<img class="creator-compatibility-icon" src="../../img/creator-icon.svg">

## Overview

The Humidity driver allows for:

* Reading relative humidity on the board
* Obtaining temperature in Celsius and raw values
* Calibrating temperature

<h3 style="padding-top:0">Available ZeroMQ Ports</h3>

* `Base port`: 20017
* `Keep-alive port`: 20018
* `Error port`: 20019
* `Data update port`: 20020

## Code Example
The following sections show how to implement a connection to each of the Humidity driver's ports. You can download this example <a href="https://github.com/matrix-io/matrix-core-examples/blob/master/javascript/humidity.js" target="_blank">here</a>.

<!-- Initial Variables -->
<details open>
<summary style="font-size: 1.75rem; font-weight: 300;">Initial Variables</summary>
Before we go into connecting to each port, the variables defined below are needed in order to access the ZeroMQ and MATRIX Protocol Buffer libraries for Javascript. We also define a few helpful variables for easy references.

```language-javascript
var zmq = require('zeromq');// Asynchronous Messaging Framework
var matrix_io = require('matrix-protos').matrix_io;// Protocol Buffers for MATRIX function
var matrix_ip = '127.0.0.1';// Local IP
var matrix_humidity_base_port = 20017;// Port for Humidity driver
```

</details>