const express = require('express');
const router = express.Router();
const bookTypeService = require('../../services/bookTypeService.js');

// 查询书籍所有类型
router.get("/", async (req, res) => {
    const result = await bookTypeService.queryType();
    res.send(result);
});

module.exports = router;