var express = require('express');
var router = express.Router();
var spawn = require("child_process").spawn,child;

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/', function(req, res) {
  child = spawn("powershell.exe", ["./switch.ps1", "-State", req.body.state]);
  child.on("exit", function() {
    console.log("Finished");
  });
  res.send(req.body);
});

module.exports = router;
