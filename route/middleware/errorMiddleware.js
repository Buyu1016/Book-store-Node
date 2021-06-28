/**
 * 用于处理错误的中间件
 */

module.exports = (err, req, res, next) => {
    console.log(req.baseUrl);
    if (err) {
        res.status(500).send(`服务器发生错误`);
    } else {
        next();
    }
}