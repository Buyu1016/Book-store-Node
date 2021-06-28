const express = require('express');
const router = express.Router();
const userService = require('../../services/userService.js');

// 添加用户
router.post("/add", async (req, res) => {
    const result = await userService.register(req.body.username, req.body.password);
    res.send(result);
});

// 登录用户
router.post("/login", async (req, res) => {
    const result = await userService.login(req.body.username, req.body.password);
    res.send(result);
});

// 查询所有用户
router.get("/all", async (req, res) => {
    const result = await userService.getAllUser();
    res.send(result);
});

module.exports = router;