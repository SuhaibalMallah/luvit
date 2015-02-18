--[[

Copyright 2015 The Luvit Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS-IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

--]]

exports.name = "luvit/https"
exports.version = "0.1.0"

local tls = require('tls')
local http = require('http')

function exports.createServer(options, onRequest)
  return tls.createServer(options, function (socket)
    return http.handleConnection(socket, onRequest)
  end)
end
