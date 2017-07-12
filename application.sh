#!/bin/bash

pwd
ls
mkdir application
cd application
git init
npm init -y
npm install express mustache-express body-parser
mkdir models views routes
touch models/schema.js views/index.mustache routes/routes.js
echo "const express = require('express');" >> routes/routes.js
echo "const router = express.Router();" >> routes/routes.js
echo "module.exports = router;" >> routes/routes.js
touch app.js
echo "const express = require('express');" >> app.js
echo "const app = express();" >> app.js
echo "const router = require('./routes/routes');" >> app.js
echo "app.use('/', router);" >> app.js
echo "app.listen(3000, function(){console.log('Listening...');});" >> app.js
atom .
