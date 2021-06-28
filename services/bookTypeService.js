/**
 * BookType模型操作管理
 */
const BookType = require('../models/bookType.js');

module.exports = {
    // 我是懒狗 不想弄添加数据啥的操作  就只弄个查询数据应该够了
    async queryType() {
        const results = await BookType.findAll({
            attributes: ["id", "typename"],
        });
        const total = await BookType.count();
        if(results.length>0){
            return {
                state: "success",
                total,
                data: JSON.parse(JSON.stringify(results)),
            }
        }else {
            return {
                state: "fail",
                total: 0,
                data: [],
            }
        }
    }
}