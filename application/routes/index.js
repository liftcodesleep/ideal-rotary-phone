var express = require('express');
const { isLoggedIn } = require('../middleware/protectors');
const { getRecentPosts, getPostById, getCommentsForPostById } = require('../middleware/posts');
const path = require('path');
var router = express.Router();

/* GET home page. */
router.get('/', getRecentPosts, function (req, res, next) {
  res.render('index', { title: 'Slippy\'s Site', name: "Jacob Lawrence" });
});
router.get("/login", function (req, res) {
  res.render('login');
})
router.get("/register", function (req, res) {
  res.render('register');
});
router.get("/postimage", isLoggedIn, function (req, res) {
  res.render('postimage');
});
router.get("/posts/:id(\\d+)", getPostById, getCommentsForPostById, function (req, res) {
  console.log(req.params);
  res.render('viewpost', { js: ["viewpost.js"] });
});
router.get("/viewpost", function (req, res) {
  res.render('viewpost');
});
router.get("/logout", function (req, res) {
  res.render('login');
})

module.exports = router;