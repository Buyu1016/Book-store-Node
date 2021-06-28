/**
 * 用于同步模型
 */

const sequelize = require('../models/index.js');

// 模型
require('../models/user.js');
require('../models/bookType.js');
require('../models/book.js');

(async function () {
    await sequelize.sync({
        alter: true
    });
    console.log(`所有模型同步成功!`);
})();