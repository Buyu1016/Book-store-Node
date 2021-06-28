const express = require('express');
const router = express.Router();
const bookService = require('../../services/bookService.js');

// 分页查询书籍资料
router.get("/", async (req, res) => {
    const page = req.query.page || 1;
    const limit = req.query.limit || 10;
    const name = req.query.name || "";
    const type = req.query.type || "";
    const result = await bookService.queryBook(page, limit, name, type);
    res.send(result);
});

module.exports = router;